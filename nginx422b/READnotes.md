
# Notes

## Proof of config file being used.


```
  Attaching to nginx422b_nginx_1
  nginx_1  | 2019/01/03 17:37:38 [emerg] 1#1: unknown directive "x" in /etc/nginx/conf.d/default.conf:12
  nginx_1  | nginx: [emerg] unknown directive "x" in /etc/nginx/conf.d/default.conf:12
  nginx422b_nginx_1 exited with code 1
  albe@vamp398:/srv/test/422dkrcol/nginx422b$
```
  
  
I put an x on an empty line like so..
  
```  
    #access_log  /var/log/nginx/host.access.log  main;
  x
    location / {
```

  
## .

2019-01-03_Thu_12.39-PM

  