# Docker Compose

- we want to create different microservices for our app, db, reverse proxy, etc.

## Create App Dockerfile
- first we create a Dockerfile to create our app container
```
FROM node:6

WORKDIR /usr/src/app

COPY app/ .

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]
```

## YAML file
- create a file called `docker-compose.yml`
- use `docker compose up` to run the docker compose file and start the entire app
