#! /bin/bash

cd public/Api/V8/OAuth2
openssl genrsa -out private.key 2048
openssl rsa -in private.key -pubout -out public.key
chmod 600 private.key public.key
chown www-data:www-data p*.key

echo "Successfully initialized instance with private public keys."
cat public.key
exec apache2-foreground

