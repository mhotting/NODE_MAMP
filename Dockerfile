FROM node:latest

EXPOSE 3000

RUN npm i npm@latest -g

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json package-lock.json* ./
RUN npm install

COPY . .

CMD [ "npm", "start" ]