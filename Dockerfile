FROM wordpress

MAINTAINER Vitaliy Ryepnoy <vitdotonline@gmail.com> http://vit.online

CMD apache2-foreground && tail -F /var/log/apache2/error.log
