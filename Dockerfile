# Base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy the application code to the working directory
COPY . .

# Expose the port your application listens on
EXPOSE 3000

# Set the command to run your application
CMD ["npm", "start"]

