FROM wordpress:latest

RUN apt-get update && apt-get install -y \
    mysql-client \
&& rm -rf /var/lib/apt/lists/*

COPY ./entrypoint.sh /
CMD [ "bash", "/entrypoint.sh"]
