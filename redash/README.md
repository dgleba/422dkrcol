.

---

1.

works.

redash docker

on ubu398g-redwe458_88.37

    https://computingforgeeks.com/how-to-install-redash-data-visualization-dashboard-on-ubuntu-18-04-lts/
    https://computingforgeeks.com/how-to-install-redash-data-visualization-dashboard-on-ubuntu-18-04-lts/

    use script to setup..

    sudo apt-get update
    sudo apt-get -yy install apt-transport-https ca-certificates curl software-properties-common wget pwgen
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \$(lsb_release -cs) stable"
    sudo apt-get update && sudo apt-get -y install docker-ce

    export VER="1.22.0"
    sudo curl -L https://github.com/docker/compose/releases/download/${VER}/docker-compose-$(uname -s)-\$(uname -m) -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose

    sudo groupadd
    sudo usermod -aG docker \$USER
    newgrp docker

    wget https://raw.githubusercontent.com/getredash/redash/master/setup/setup.sh

    chmod +x setup.sh
    ./setup.sh

works.

---

---

3.

noworky.

getredash

https://github.com/getredash/redash/blob/master/setup/docker-compose.yml

https://redash.io/help/open-source/setup

    would not start. errors.
    see - sftp://192.168.88.60/srv/dkr/422dkrcol/redash/loga

---
