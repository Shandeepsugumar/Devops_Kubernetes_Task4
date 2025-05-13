# Use the Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all source files including index.js
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

