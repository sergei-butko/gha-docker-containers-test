FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.2rdn1by.mongodb.net
ENV MONGODB_USERNAME sergei
ENV MONGODB_PASSWORD SmQnpsJg0YtPrcoV

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]