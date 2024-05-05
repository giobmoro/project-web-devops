FROM node:18.10.0

WORKDIR /web

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]
