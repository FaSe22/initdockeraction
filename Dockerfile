# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of your action's source code to the working directory
COPY . .

# Run the action when the container starts
CMD ["node", "/usr/src/app/src/index.js"]

