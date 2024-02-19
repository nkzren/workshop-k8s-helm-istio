FROM node:20 as base

ENV APP_DIR /opt/marotinus

WORKDIR $APP_DIR

COPY package-lock.json package.json $APP_DIR/

RUN npm ci



FROM base as estagio_de_dev

ENTRYPOINT ["npm", "run", "dev"]




FROM base as estagio_de_prd

ENTRYPOINT ["npm", "start"]

COPY src $APP_DIR/src
