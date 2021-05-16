FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# Wildcard used to ensure both package.json and package-lock.json are copied
COPY package*.json ./

RUN npm intall --silent

# Bundle app source
COPY . .

EXPOSE 3000

CMD ["npm", "start"]