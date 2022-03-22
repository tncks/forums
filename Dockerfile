FROM httpd:2.4

COPY ./public-html/ /usr/local/apache2/htdocs/

VOLUME ["/var/log/apache2"]

EXPOSE 80 443

CMD ["apachectl", "-k", "start", "-DFOREGROUND"]
