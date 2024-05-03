FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build
EXPOSE 3007

CMD [ "npm", "run", "start:dev" ]
