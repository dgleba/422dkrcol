# Project: jwproxy-custm459

Custom nginx config for jwilder proxy.

sftp://104.193.61.58:47161/srv/dkr/jwproxy-custm459

dgpcs9 series 9 test port-80-443

# Instructions..

https://stackoverflow.com/questions/39514293/docker-nginx-proxy-how-to-route-traffic-to-different-container-using-path-and-n?rq=1

echo '127.0.0.1 whoami.local' | sudo tee -a /etc/hosts
cat /etc/hosts

    CONTAINER ID     IMAGE                        PORTS                                      NAMES
    47a67d5907e8     jwilder/whoami               8000/tcp                                   jwproxy-custm459_app2_1
    862c3531dc8d     jwilder/nginx-proxy:alpine   0.0.0.0:80->80/tcp, 0.0.0.0:443->443/tcp   jwproxy-custm459_nginxproxy459_1
    569b1179df02     nginx:1.15-alpine            80/tcp                                     jwproxy-custm459_gateway_1
    6b8bfea082b5     jwilder/whoami               8000/tcp                                   jwproxy-custm459_app1_1


    curl -H "Host: whoami.local" localhost
    response.
      This is nginx nindex.html - v23

    albe@vamp398:/srv/dkr/jwproxy-custm459$ curl -H "Host: whoami.local" localhost/app2
    I'm 47a67d5907e8

    albe@vamp398:/srv/dkr/jwproxy-custm459$ curl -H "Host: whoami.local" localhost/app1
    I'm 6b8bfea082b5


    docker-compose exec nginxproxy459 cat /etc/nginx/conf.d/default.conf

# From:

https://github.com/jwilder/nginx-proxy

---

---

---

---

---

---

---

---

---

---

---

---

---

---

---

---

# more junk..

echo '127.0.0.1 whoami.local' | sudo tee -a /etc/hosts
cat /etc/hosts

eg..
no.
curl $(hostname --all-ip-addresses | awk '{print $1}'):8000

no.
curl $(whoami.local --all-ip-addresses | awk '{print $1}'):8080

curl -H "Host: whoami.local" localhost:8080/app2

curl -H "Host: whoami.local" localhost/app2

cat /etc/hosts
echo '127.0.0.1 whoami.local' | sudo tee -a /etc/hosts

127.0.0.1 localhost
127.0.1.1 vamp398

# The following lines are desirable for IPv6 capable hosts

::1 localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters

http://whoami.local

docker-compose exec nginxproxy459 cat /etc/nginx/conf.d/default.conf

ref.
https://github.com/guysoft/ownphotos-proxy

---

other..

https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion/wiki/Docker-Compose

https://blog.ippon.tech/set-up-a-reverse-proxy-nginx-and-docker-gen-bonus-lets-encrypt/

https://github.com/buchdag/letsencrypt-nginx-proxy-companion-compose

https://github.com/buchdag/letsencrypt-nginx-proxy-companion-compose/blob/master/2-containers/compose-v3/environment/docker-compose.yaml
