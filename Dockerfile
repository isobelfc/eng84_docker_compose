# Dockerfile for nodejs app
FROM node:6

# setting up the working dir inside the container
WORKDIR /usr/src/app

# COPY everything for dependencies required
# COPY package*.json ./
COPY app/ .

# run npm install after we have copied the dependencies
RUN npm install

# expose the port for our app
EXPOSE 3000

# ENTRYPOINT ["node", "seeds/seed.js"]
# RUN nodejs seeds/seed.js

# launch the app
# CMD ["node", "app.js"]
