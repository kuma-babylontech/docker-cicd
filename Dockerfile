FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY app.js .

CMD [ "node", "app.js" ]

EXPOSE 8080
