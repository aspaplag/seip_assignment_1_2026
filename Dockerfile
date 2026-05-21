FROM node:18-alpine 

WORKDIR /app

COPY package*.json ./
RUN npm install --production

#after npm so it doesn't mess up cache
COPY . .

EXPOSE 3000

CMD ["node", "server.js"]