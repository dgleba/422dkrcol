#

# Commands

```

11.
ur='https://getgrav.org/download/core/grav-admin/1.6.11'
dest=html477
tmf="/tmp/$$.tmpzip"
wget -O $tmf $ur &&    unzip -d $dest $tmf &&    ls #rm $tmf

22.
mv html477/grav-admin html477/grav


33.
# spacer to seperate output in terminal..
seq 1 55 | xargs -I{} date

44.
docker-compose build


```

# not used..

```
no. use a zip download instead.
  git clone --depth=2 https://github.com/getgrav/grav.git  data477

# mv grav html477/grav

```
