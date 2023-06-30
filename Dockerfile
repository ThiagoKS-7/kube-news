FROM node:18.16.0
WORKDIR /app
COPY src/package*.json ./
RUN npm install
COPY . . 
EXPOSE 8080
CMD ["node", "src/server.js"]