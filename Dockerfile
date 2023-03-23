FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME sai-DB
ENV MONGODB_CLUSTER_ADDRESS cluster0.rnj31au.mongodb.net
ENV MONGODB_USERNAME saiteja-1 	
ENV MONGODB_PASSWORD oLaDC71Es84tQTli

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]