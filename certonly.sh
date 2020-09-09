docker run --rm -p 80:80 -p 443:443 --network host \
    -v $PWD/certbot/data/conf:/etc/letsencrypt \
    -v $PWD/certbot/data/www:/var/www/certbot \
    -it certbot/certbot certonly \
    --standalone --non-interactive --agree-tos --email "quiet9.noise@gmail.com" $@

