FROM wordpress:latest

RUN apt-get update && apt-get install -y \
    mysql-client \
&& rm -rf /var/lib/apt/lists/*

# Install wordpress libs
RUN docker-php-ext-install \
  zip

# Install wordpress cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

COPY ./entrypoint.sh /
CMD [ "bash", "/entrypoint.sh"]
