upstream intergalactic {
    server intergalactic:8000;
}

server {
        listen intergalactic.radif.ru:80;
        server_name intergalactic.radif.ru.ru;
        return 301 https://$host$request_uri;
}

server {
    listen 80;
    listen [::]:80;
    listen 443 ssl;
    listen [::]:443 ssl;
#     listen intergalactic.radif.ru:80;
#     listen intergalactic.radif.ru:443 ssl http2;
    server_name intergalactic.radif.ru;

    ssl_certificate /etc/letsencrypt/live/intergalactic.radif.ru/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/intergalactic.radif.ru/privkey.pem;
    ssl_trusted_certificate /etc/letsencrypt/live/intergalactic.radif.ru/chain.pem;

    ssl_stapling on;
    ssl_stapling_verify on;
#    resolver 127.0.0.1 8.8.8.8;

    # исключим возврат на http-версию сайта
#     add_header Strict-Transport-Security "max-age=31536000";

    # явно "сломаем" все картинки с http://
    add_header Content-Security-Policy "img-src https: data:; upgrade-insecure-requests";

    location / {
#     Перенаправление всех запросов в сервис бэкенда
        proxy_pass http://intergalactic;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header Host $host;
        proxy_redirect off;


        # У каких адресов есть доступ. Включены все. Для безопасности можно указать конкретные!
        add_header 'Access-Control-Allow-Origin' '*';
        add_header 'Access-Control-Allow-Credentials' 'true';
        # Доступные методы запроса. Не используемые можно отключить!
        add_header 'Access-Control-Allow-Methods' 'GET, POST, OPTIONS, DELETE, PUT, PATCH, HEAD, CONNECT, TRACE';
        add_header 'Access-Control-Allow-Headers' 'DNT,X-CustomHeader,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Authorization';
    }

    location /static/ {
        alias /var/www/intergalactic/staticfiles/;
    }

    location /media/ {
        alias /var/www/intergalactic/media/;
    }
}