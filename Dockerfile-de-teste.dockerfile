#Esse é o Dockerfile de uma aplicação real, para eu ter noção de como funciona!

FROM node:10-alpine

# Copy source to container
RUN mkdir -p /usr/app/src

# Copy source code
COPY src /usr/app/src
COPY package.json /usr/app
COPY package-lock.json /usr/app

WORKDIR /usr/app

# Running npm install for production purpose will not run dev dependencies.
RUN npm install -only=production    

# Create a user group 'xyzgroup'
RUN addgroup -S xyzgroup

# Create a user 'appuser' under 'xyzgroup'
RUN adduser -S -D -h /usr/app/src appuser xyzgroup

# Chown all the files to the app user.
RUN chown -R appuser:xyzgroup /usr/app

# Switch to 'appuser'
USER appuser

# Open the mapped port
EXPOSE 3000

# Start the process
CMD ["npm", "start"]