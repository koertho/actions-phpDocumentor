FROM php:8.2-cli
#RUN curl -L https://github.com/phpDocumentor/phpDocumentor/releases/latest/download/phpDocumentor.phar -o /usr/local/bin/phpDocumentor
RUN curl -L https://github.com/phpDocumentor/phpDocumentor/releases/download/v3.5.3/phpDocumentor.phar -o /usr/local/bin/phpDocumentor
COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh && chmod a+x /usr/local/bin/phpDocumentor
ENTRYPOINT ["/entrypoint.sh"]