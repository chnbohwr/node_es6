# specify the node base image with your desired version node:<version>
FROM node:8
COPY ./ /usr/local/node_server
WORKDIR  /usr/local/node_server
RUN npm install -g pm2
RUN npm install
RUN npm build
EXPOSE 3000
# CMD [ "npm", "start" ]
CMD [ "pm2-docker", "start", "pm2.json" ]
