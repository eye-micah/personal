#!/bin/bash
#
/usr/bin/rsync -avx -e 'ssh -p 22' --delete --exclude '.ssh' public/ $DEPLOY_USERNAME@$DEPLOY_SERVER:/usr/share/nginx/public/
