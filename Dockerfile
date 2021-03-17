# Specifies where to get the base image (Node v12 in our case) and creates a new container for it
FROM node:12

# Set working directory. Paths will be relative this WORKDIR.
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json /usr/src/app
RUN npm install

# Copy source files from host computer to the container
COPY . /usr/src/app

# Build the app
#RUN npm run build

# Specify port app runs on
EXPOSE 3333

# Run the app
CMD [ "npm", "start" ]