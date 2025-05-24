# Use official Node.js LTS version based on Alpine
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app source code
COPY . .

# Expose the port your app listens on (e.g., 3000)
EXPOSE 3000

# Run your app (replace "start" with your actual start script)
CMD ["npm", "start"]
