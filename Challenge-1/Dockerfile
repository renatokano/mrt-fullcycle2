# This stage installs our modules
FROM node:14.1-alpine

# Set the working directory
WORKDIR /app

# Copy local files to generate the image
COPY app.js package.json package-lock.json ./

# Install all dependencies
RUN npm install

# Define the network port that this container will listen
EXPOSE 3000

# Start the service
CMD ["node", "app.js"] 