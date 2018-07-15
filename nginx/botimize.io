server {

	server_name botimize.io www.botimize.io;

	location / {
                root /home/ubuntu/botimize-landing/HTML;
                index index.html;
	}

	if ($scheme != "https") {
		return 301 https://$host$request_uri;
	} # managed by Certbot


    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/botimize.io/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/botimize.io/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

	listen 80;
}

