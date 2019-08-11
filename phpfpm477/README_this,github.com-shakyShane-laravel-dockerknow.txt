docker

  get docker files from ..
    https://github.com/shakyShane/laravel-docker
    
    https://medium.com/@shakyShane/laravel-docker-part-1-setup-for-development-e3daaefaf3c
    





















----------------------------------------------------
Title:  .

-----------------------2019-06-29[Jun-Sat]11-00AM

vue-auth eg.

https://github.com/Pochwar/laravel-vue-spa.git

  https://medium.com/@ripoche.b/create-a-spa-with-role-based-authentication-with-laravel-and-vue-js-ac4b260b882f


sftp://192.168.88.39/srv/dkr/465s/pochwar-vuelara465p



Composer..


  docker run --rm -v $(pwd):/app composer/composer install
  
  docker run --rm -v $(pwd):/app composer/composer update


  add platform in composer.json ..
  
  "config": {
    "preferred-install": "dist",
    "sort-packages": true,
    "optimize-autoloader": true,
        "platform": {
          "php": "7.1.3"
        }
  },



docker-compose exec app php artisan key:generate

docker-compose exec app  php artisan jwt:secret

# optional?  docker-compose exec app php artisan optimize  

docker-compose exec app php artisan migrate --seed
  
  
  
works!  

http://192.168.88.39:8080/api/users

 {"error":"Unauthorized"}
 

----------------------------------------------------


----------------------------------------------------
Title:  .
-----------------------2019-06-29[Jun-Sat]16-51PM

curl -X POST http://192.168.88.39:8080/api/auth/register \
 -H "Accept: application/json" \
 -H "Content-Type: application/json" \
 -d '{ "email": "dgleba@gmail.com", "password": "a123123", "password_confirmation": "a123123"}'
 
 
 eg..
 
curl -X POST http://localhost:8000/api/register \
 -H "Accept: application/json" \
 -H "Content-Type: application/json" \
 -d '{"name": "Jim Beam", "email": "jim@inabottle.com", "password": "somesecret", "password_confirmation": "somesecret"}'

 
 

albe@vamp398:/srv/dkr/465s/pochwar-vuelara465p$  
curl -X POST http://192.168.88.39:8080/api/auth/register \
>  -H "Accept: application/json" \
>  -H "Content-Type: application/json" \
>  -d '{ "email": "dgleba@gmail.com", "password": "a123123", "password_confirmation": "a123123"}'                                                                               
albe@vamp398:/srv/dkr/465s/pochwar-vuelara465p$
      {"status":"success"}
      
      
      

 

----------------------------------------------------


----------------------------------------------------
Title:  .
-----------------------2019-06-29[Jun-Sat]17-42PM

albe@vamp398:/srv/dkr/465s/pochwar-vuelara465p$ docker-compose exec app  php artisan jwt:secret
jwt-auth secret [TEnIxyjDoP9OLJ2exB39n8PJagogLr8B0KMKaz2sAPsDL5Q5mzs9bgZKdKDrFAl2] set successfully.
albe@vamp398:/srv/dkr/465s/pochwar-vuelara465p$



----------------------------------------------------

----------------------------------------------------
Title:  .
-----------------------2019-06-29[Jun-Sat]18-16PM

albe@vamp398:/srv/dkr/465s/pochwar-vuelara465p$ npm run dev

> @ dev /srv/dkr/465s/pochwar-vuelara465p
> npm run development


> @ development /srv/dkr/465s/pochwar-vuelara465p
> cross-env NODE_ENV=development node_modules/webpack/bin/webpack.js --progress --hide-modules --config=node_modules/laravel-mix/setup/webpack.config.js

internal/modules/cjs/loader.js:613
    throw err;
    ^

Error: Cannot find module '/srv/dkr/465s/pochwar-vuelara465p/node_modules/laravel-mix/setup/webpack.config.js'
Require stack:
- /srv/dkr/465s/pochwar-vuelara465p/node_modules/webpack/bin/convert-argv.js
- /srv/dkr/465s/pochwar-vuelara465p/node_modules/webpack/bin/webpack.js
    at Function.Module._resolveFilename (internal/modules/cjs/loader.js:610:15)
    at Function.Module._load (internal/modules/cjs/loader.js:526:27)
    at Module.require (internal/modules/cjs/loader.js:666:19)
    at require (internal/modules/cjs/helpers.js:16:16)
    at requireConfig (/srv/dkr/465s/pochwar-vuelara465p/node_modules/webpack/bin/convert-argv.js:97:18)
    at /srv/dkr/465s/pochwar-vuelara465p/node_modules/webpack/bin/convert-argv.js:104:17
    at Array.forEach (<anonymous>)
    at module.exports (/srv/dkr/465s/pochwar-vuelara465p/node_modules/webpack/bin/convert-argv.js:102:15)
    at /srv/dkr/465s/pochwar-vuelara465p/node_modules/webpack/bin/webpack.js:171:41
    at Object.Yargs.self.parse (/srv/dkr/465s/pochwar-vuelara465p/node_modules/yargs/yargs.js:533:18)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @ development: `cross-env NODE_ENV=development node_modules/webpack/bin/webpack.js --progress --hide-modules --config=node_modules/laravel-mix/setup/webpack.config.js`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @ development script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /home/albe/.npm/_logs/2019-06-29T22_16_17_152Z-debug.log
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! @ dev: `npm run development`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the @ dev script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /home/albe/.npm/_logs/2019-06-29T22_16_17_167Z-debug.log
albe@vamp398:/srv/dkr/465s/pochwar-vuelara465p$



mkdir errors
cp  /home/albe/.npm/_logs/2019-06-29T22_16_17_167Z-debug.log errors/


----------------------------------------------------
