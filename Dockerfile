FROM node:18.0.0-alpine

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

RUN npm ci

COPY . .

CMD ["node", "index.js"]
