FROM mongo:8.0.3

COPY ./data /data
COPY ./init-db.sh /docker-entrypoint-initdb.d/

RUN chmod +x /docker-entrypoint-initdb.d/init-db.sh

EXPOSE 27017