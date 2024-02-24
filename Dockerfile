# Use the official Node.js image as a base image
FROM node:21-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port that Next.js will run on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
