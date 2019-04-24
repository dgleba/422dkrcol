# Dkr378php





# This is older and it needs to be updated.





This repo creates a generic LAMP stack using docker.

It serves up anything in `/var/www/html` on the server.

## Installation:

To run it:  

Install docker and docker-compose. I run it on linux ubuntu 16.04.

I used:
```
docker --version
Docker version 18.03.0-ce, build 0520e24
docker-compose -version
docker-compose version 1.21.2, build a133471
```


```
cd /var/www/html
git clone  https://github.com/dgleba/dkr378php.git
cd dkr378php
docker-compose up
```


## How to use try using it:

Visit http://10.4.11.186:6021/ (http://10.4.11.186:6021/)

http://10.4.11.186:6021/adminer/adminer.php
 
http://10.4.11.186:6021/test2/strap179/


## Mysql

Mysql is at:  `10.4.11.186:6022` (check docker-compose.yml to see if has been updated)

user: `root` password: `root`


## This

This: https://github.com/dgleba/dkr378php

David Gleba dgleba@gmail.com
