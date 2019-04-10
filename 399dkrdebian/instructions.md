
# This is part of a system of dockerized apps

See this repo to see the ideas used in this system.

  https://github.com/dgleba/392dkr/blob/master/README.md

Check the bash aliases and Makefile that are used for common tasks.




# Start it

Use alias `dkup`

See Bash aliases note below..




## Bash aliases

Also use these alias from https://github.com/dgleba/vamp206a/blob/master/a3/alias21.sh

- examples..

	```
	echo "alias dkup='docker-compose up'" >>   ~/.bash_aliases
	echo "alias dkd='docker-compose down'" >>   ~/.bash_aliases
	echo "alias dkupd='docker-compose up -d'" >>   ~/.bash_aliases
	echo "alias dkupr='docker-compose  up --build  --force-recreate  '" >>   ~/.bash_aliases
	echo "alias dkupp='docker-compose up -f docker-compose.prod.yml -d'" >>   ~/.bash_aliases
	echo "alias dkps='set -vx; docker images; docker network ls;	docker volume ls;	docker ps -a;	docker ps; set +vx'" >>   ~/.bash_aliases
  ```
	
	