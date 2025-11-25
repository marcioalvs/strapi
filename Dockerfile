# Use a Node.js base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /opt/app

# Copy package.json and yarn.lock (or package-lock.json)
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --production --frozen-lockfile

# Copy the rest of the application files
COPY . .

# Build the Strapi admin panel (important for production)
RUN yarn build

# Expose the port Strapi runs on
EXPOSE 1337

# Define the command to start Strapi
CMD ["yarn", "start"]