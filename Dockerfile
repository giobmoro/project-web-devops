FROM node:18.10.0

WORKDIR /web

COPY . .

RUN npm install

RUN npm install -g eslint

RUN eslint .

EXPOSE 3000

CMD ["node", "app.js"]
