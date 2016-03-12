# docker-letsencrypt-wordpress
Modded official Wordpress docker image with ability to run letsencrypt

https://hub.docker.com/r/vitr/letsencrypt-wordpress/

@TODO test with fpm

### how to build image
    git clone https://github.com/vitr/docker-letsencrypt-wordpress.git
    cd docker-letsencrypt-wordpress/apache
    docker build -t vitr/letsencrypt-wordpress .

current letsencrypt rate limit is:  **5** certificates in **7** days

### how to run letsencrypt
    mkdir wp
    cd wp
    vi docker-compose.yml
    
_===insert the following lines===_

    wordpress:
      hostname: yourdomain.com
      image: vitr/letsencrypt-wordpress
      links:
        - db:mysql
      ports:
       - 80:80
       - 443:443
    db:
      image: mariadb
      environment:
       MYSQL_ROOT_PASSWORD: pass
       
_===end of insert===_

    docker-compose up -d
    docker exec -ti wp_wordpress_1 bash
    
now run inside the wordpress container
    export TERM=xterm
    apt-get update
    apt-get install git 
    git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
    cd /opt/letsencrypt
    ./letsencrypt-auto --apache -d yourdomain.com
    
    
more here
https://www.digitalocean.com/community/tutorials/how-to-secure-apache-with-let-s-encrypt-on-ubuntu-14-04
    
    
    
    
    
    
