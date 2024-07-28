# Use the official Node.js image as the base image
FROM node:14

# User
USER node

# Set the working directory in the container
#WORKDIR /usr/src/app
WORKDIR /home/node/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Entrypoint
#ENTRYPOINT ["node"]

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the application
#CMD ["node", "--inspect", "app.js"]
CMD ["npm", "start"]