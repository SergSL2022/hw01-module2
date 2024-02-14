FROM nodejs-app:20

LABEL version="2.0"
LABEL description="Simple NodeJS backend application with ExpressJS http server"
LABEL endpoint1="/"
LABEL endpoint2="/healthz"


WORKDIR /webapps/express_http_server

COPY ./package*.json ./

RUN npm install

COPY ./ ./

ARG PORT

ENV PORT=${PORT}

EXPOSE ${PORT}

RUN apk add --no-cache shadow

RUN groupadd -r serg && useradd -r -g serg -d /webapps/express_http_server -s /sbin/nologin -c "Docker image user" serg

RUN chown -R serg:serg /webapps/express_http_server

USER serg

CMD ["npm", "start"]