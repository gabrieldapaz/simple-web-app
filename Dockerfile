# Specify a base image
# Tag alpine -> Lean image
FROM node:alpine

WORKDIR /usr/app

# Install some dependencies
# Copy files from the current directory to the container context
COPY ./package.json ./
RUN npm install
# Prevents to reinstall all dependencies all the time
COPY ./ ./

# Default command
CMD ["npm", "start"]