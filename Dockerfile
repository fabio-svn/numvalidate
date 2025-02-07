FROM node:8-alpine

WORKDIR /app

COPY package.json /app

RUN npm install -g npm@latest --unsafe-perm
RUN npm i -g yarn --unsafe-perm

COPY . .

EXPOSE 1667

CMD ["yarn", "start"]
