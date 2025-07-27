FROM nginx:alpine
COPY <<EOF /etc/nginx/nginx.conf
events {
    worker_connections 1024;
}
http {
    server {
        listen 80;
        location / {
            return 200 'Mailcow SMTP Server Ready\n';
            add_header Content-Type text/plain;
        }
        location /health {
            return 200 'OK';
        }
    }
}
EOF
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

