## Start of configuration add by letsencrypt container
location ^~ /.well-known/acme-challenge/ {
    auth_basic off;
    allow all;
    root /usr/share/nginx/html;
    try_files $uri =404;
    break;
}
## End of configuration add by letsencrypt container
location /app1 {
  proxy_pass http://app1:8000;
}

location /app2 {
  proxy_pass http://app2:8000;
}