FROM node:lts

WORKDIR /app

COPY ./src/package.json .

RUN npm install

COPY ./src .

ENV HOST 0.0.0.0

ENV PORT 3000

CMD [ "npm", "run", "dev" ]
