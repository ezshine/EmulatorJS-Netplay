FROM node:18-alpine

RUN apk --no-cache add curl

WORKDIR /app

COPY package.json ./
RUN npm install --omit=dev

COPY server.js ./server.js

ENV PORT=3000
EXPOSE 3000

CMD ["npm", "start"]
