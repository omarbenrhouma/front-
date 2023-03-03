# Define the base image
FROM node:18

# Set the working directory
WORKDIR /my-app

# Copy the package.json and package-lock.json files to the container
COPY ./package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Define the command to start the application
CMD ["npm", "start"]