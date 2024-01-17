FROM node:14

# stop node
RUN kill 1

# Install Node.js and other dependencies
RUN npm install npm@6.14 -g
RUN npm install -g nodemon

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./package*.json /usr/src/app/

# Install!
RUN npm install

# Bundle app source
COPY ./ /usr/src/app/

CMD [ "npm", "start"]