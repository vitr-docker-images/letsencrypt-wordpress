FROM wordpress

CMD apache2-foreground && tail -F /var/log/apache2/error.log
