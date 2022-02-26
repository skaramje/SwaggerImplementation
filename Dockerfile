FROM node:14-slim
WORKDIR /app
COPY index.js ./
COPY package*.json ./
COPY swagger.json ./
RUN npm install
COPY . .
EXPOSE 4000
CMD ["npm", "start"]
