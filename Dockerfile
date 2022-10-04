FROM node:alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 5000

CMD [ "node", "index.js" ]

# docker build -t node-app/latest .
# docker run -p 5000:5000 node-app/latest
# docker is configured to use the default machine with IP 192.168.99.102
# docker kill $(docker ps -q)