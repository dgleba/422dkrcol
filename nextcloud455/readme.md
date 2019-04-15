docker-compose -f docker-compose1500.yml down

rm -rf /srv/datasys/maria1500
rm -rf /srv/datasys/nextcl-1500

docker-compose -f docker-compose1500.yml up

docker-compose up maria1500 nextcl-1500 adminer429

sudo chmod 777 ~/dkr/datasys/nextcl-1500/config/\*
