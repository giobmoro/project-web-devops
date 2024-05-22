FROM node:18.20.3

WORKDIR /web

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]
