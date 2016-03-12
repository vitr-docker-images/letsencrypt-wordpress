# docker-letsencrypt-wordpress
Modded official Wordpress docker image with ability to run letsencrypt

https://hub.docker.com/r/vitr/letsencrypt-wordpress/

@TODO test with fpm

### how to build image
    git clone https://github.com/vitr/docker-letsencrypt-wordpress.git
    cd docker-letsencrypt-wordpress/apache
    docker build -t vitr/letsencrypt-wordpress .

current letsencrypt rate limit is:  5 certificates in 7 days
