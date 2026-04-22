#!/bin/bash
# SwatOrganics — Production Deployment Script
# Run from local machine: bash deploy.sh
# Requires: SSH shell access enabled on server, key at ~/.ssh/id_rsa_swatorganics_deploy_nopass

SSH_KEY="$HOME/.ssh/id_rsa_swatorganics_deploy_nopass"
SSH_USER="invobphd"
SSH_HOST="server703.web-hosting.com"
SSH_PORT="21098"
REMOTE_DIR="/home/invobphd/swatorganics"
REPO="https://github.com/adilKhan72/swatorganics-bagisto.git"

SSH="ssh -i $SSH_KEY -p $SSH_PORT -o StrictHostKeyChecking=no $SSH_USER@$SSH_HOST"
SCP="scp -i $SSH_KEY -P $SSH_PORT -o StrictHostKeyChecking=no"  # used for .env upload

echo "======================================"
echo " SwatOrganics Deployment"
echo "======================================"

# 1 — Clone or update repo on server
echo ""
echo "[1/6] Deploying code..."
$SSH "
  if [ -d '$REMOTE_DIR/.git' ]; then
    echo 'Repo exists — pulling latest...'
    cd $REMOTE_DIR && git fetch origin && git checkout dev && git pull origin dev
  else
    echo 'Fresh clone...'
    git clone -b dev $REPO $REMOTE_DIR
  fi
"

# 2 — Copy .env.production as .env on server
echo ""
echo "[2/6] Uploading .env..."
$SCP .env.production $SSH_USER@$SSH_HOST:$REMOTE_DIR/.env

# 3 — Run composer install on server
echo ""
echo "[3/6] Installing PHP dependencies..."
$SSH "
  cd $REMOTE_DIR
  composer install --no-dev --optimize-autoloader --no-interaction 2>&1 | tail -5
"

# 4 — Run migrations (schema changes only, never overwrites data)
echo ""
echo "[4/6] Running migrations..."
$SSH "
  cd $REMOTE_DIR
  php artisan migrate --force 2>&1
  echo 'Migrations done.'
"

# 5 — Set file permissions
echo ""
echo "[5/6] Setting permissions..."
$SSH "
  cd $REMOTE_DIR
  find storage -type d -exec chmod 755 {} \;
  find storage -type f -exec chmod 644 {} \;
  find bootstrap/cache -type d -exec chmod 755 {} \;
  chmod -R 755 storage bootstrap/cache
  echo 'Permissions set.'
"

# 6 — Create storage link and clear cache
echo ""
echo "[6/6] Linking storage and clearing cache..."
$SSH "
  cd $REMOTE_DIR
  php artisan storage:link --force 2>&1
  php artisan optimize:clear 2>&1
  php artisan responsecache:clear 2>&1
  php artisan config:cache 2>&1
  php artisan route:cache 2>&1
  php artisan view:cache 2>&1
  rm -rf /home/invobphd/lscache/* 2>/dev/null || true
  echo 'Cache cleared and rebuilt.'
"

# 7 — Verify site is responding
echo ""
echo "Verifying deployment..."
HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}" --max-time 15 https://swatorganics.com 2>/dev/null || echo "000")
echo "HTTP response: $HTTP_CODE"

echo ""
echo "======================================"
if [ "$HTTP_CODE" = "200" ] || [ "$HTTP_CODE" = "301" ] || [ "$HTTP_CODE" = "302" ]; then
  echo " Deployment complete! swatorganics.com is live."
else
  echo " Deployment done — verify manually at https://swatorganics.com"
  echo " HTTP code $HTTP_CODE may just mean SSL is not set up yet."
fi
echo "======================================"
