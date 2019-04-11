FROM node:8

WORKDIR /usr/src/app/genieacs-sim

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 7547

CMD [ "./genieacs-sim" ]