FROM node:12-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app


WORKDIR /home/node/app

COPY package*.json ./

USER node

# install dependancies
RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

# start server
CMD [ "npm", "start"]