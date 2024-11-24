FROM mongo:8.0.3

RUN apt-get update && apt-get install -y git

RUN --mount=type=secret,id=github_token \
    GITHUB_TOKEN=$(cat /run/secrets/github_token) && \
    git clone https://$GITHUB_TOKEN@github.com/THD-C/Secrets.git

COPY ./data /data
COPY ./init-db.sh /docker-entrypoint-initdb.d/

RUN chmod +x /docker-entrypoint-initdb.d/init-db.sh

EXPOSE 27017