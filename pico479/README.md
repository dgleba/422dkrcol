# David Gleba pico479

# Commands

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
   ; seq 1 45 | xargs -I{} date ; echo Started: $dts __  Ended: $(date +"%Y-%m-%d_%H.%M.%S") -=-=-=-=-=-=-=-=-=-=-=-


44.


dts=$(date +"%Y-%m-%d_%H.%M.%S"); seq 1 45 | xargs -I{} date ; \
  docker-compose build  \
   ;  seq 1 45 | xargs -I{} date ;  echo Started__ $dts __ -=-=-=-=-=-=-=-=-=-=-=-



```

# not used..

```

```

# Commands examples.

```

11.

ur='https://getgrav.org/download/core/grav-admin/1.6.11'
dest=html477
tmf="/tmp/$$.tmpzip"
wget -O $tmf $ur &&    unzip -d $dest $tmf &&    ls #rm $tmf
mv html477/grav-admin html477/grav




```
