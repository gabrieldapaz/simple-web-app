# Specify a base image
# Tag alpine -> Lean image
FROM node:alpine

# Install some dependencies
# Copy files from the current directory to the container context
COPY ./ ./
RUN npm install

# Default command
CMD ["npm", "start"]