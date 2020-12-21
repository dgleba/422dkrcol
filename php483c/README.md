# php483 a generic php docker setup

# Status.

See the \_status...md file.

# Commands

```

12.

dts=$(date +"%Y-%m-%d_%H.%M.%S"); seq 1 45 | xargs -I{} date ; \
  docker-compose build --force-rm \
   ;  seq 1 10 | xargs -I{} date ;  echo Started__ $dts \_\_ -=-=-=-=-=-=-=-=-=-=-=-


22.


https://docs.directus.io/getting-started/installation.html#setup
https://github.com/directus/v8-archive/blob/master/docker/images/apache/Dockerfile


sudo chown -R  $USER:www-data ../data/php483d1


# Careful, you could damage the mysql permissions..
sudo chown -R  $USER:$USER ../data
sudo chown -R  $USER:www-data ../data



32a.

git clone --depth 2  https://github.com/shannah/xataface.git ../data/php483d1/xataface



32b.

git clone --depth 1  https://github.com/directus/directus.git ../data/php483b

  got error, but it was permissions issue, so the above should work. problem was..  can't get prompts for admin setup.

# git clone above should work. but I used this..

cd /srv/dkr/data/
wget https://github.com/directus/directus/archive/master.zip
  unzip master.zip
  mv directus-master/ php483b

---

problem ..  can't get prompts for admin setup.

# https://github.com/directus/directus/issues/2268

# sudo chown -R www-data:www-data /var/www/directus
  # this fixed the issue..  can't get prompts for admin setup.
  docker-compose exec php /bin/bash -c "chown -R www-data:www-data /var/www"



Visit  http://192.168.88.39:8003/admin/

    answer questions (fill out forms) to set it up.




42.

Notes..

docker-compose run php /bin/bash
docker-compose exec php /bin/bash

docker-compose run php /bin/bash -c "cat /etc/apache2/apache2.conf" > apache2.conf.in

docker-compose run php /bin/bash -c "grep -ri  'var.*www' /etc/apache2"

docker-compose exec php /bin/bash -c "grep -ri --color 'root' /etc/apache2"



53.

https://docs.directus.io/guides/collections.html#creating-collections

made books collection.

odd..
  see lower left corner for menu. it has admin setting selection on it.

works.


63.

cd /srv/dkr/data/php483b/public

wget https://github.com/vrana/adminer/releases/download/v4.7.3/adminer-4.7.3-en.php

mv adminer-4.7.3-en.php adminer.php





```

#

#

#

#

# old Commands

```

11.


wget https://github.com/picocms/Pico/releases/download/v2.0.4/pico-release-v2.0.4.tar.gz
mkdir data479
tar -xvf pico-release-v2.0.4.tar.gz -C data479


33.

# spacer to seperate output in terminal..
seq 1 55 | xargs -I{} date

# spacer before and after with start stop time
dts=$(date +"%Y-%m-%d_%H.%M.%S"); seq 1 45 | xargs -I{} date ; \
  sleep 2;  ls  \
   ; seq 1 5 | xargs -I{} date ; echo Started: $dts __  Ended: $(date +"%Y-%m-%d_%H.%M.%S") -=-=-=-=-=-=-=-=-=-=-=-


44.




```

# not used..

```

```

# Commands examples.

```

..

```

# errors.

```

problem..
  libapache2-mod-php7.3 : Depends: php7.3-cli but it is not installable
  Depends: php7.3-common (= 7.3.4-2) but it is not installable Depends: php7.3-json but it is not installable Depends: php7.3-opcache but it is not installable E: Unable to correct problems, you have held broken packages.
ans.
  just don't install it.


```
