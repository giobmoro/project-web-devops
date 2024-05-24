FROM node:18.20.2

WORKDIR /web

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]
