FROM node:20-alpine

WORKDIR /app

COPY package.json /app

# Remover Yarn existente e reinstalar
RUN rm -f /usr/local/bin/yarn && npm install -g npm@latest --unsafe-perm
RUN npm i -g yarn --unsafe-perm --force

COPY . .

EXPOSE 1667

CMD ["yarn", "start"]
