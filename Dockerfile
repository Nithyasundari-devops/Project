# Dockerfile
FROM node:18
#App
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

# Use serve for static files
RUN npm install -g serve

EXPOSE 80
CMD ["serve", "-s", "build", "-l", "80"]

