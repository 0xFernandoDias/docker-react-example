# Node image that I`m going to customize, it's a kind of a required enviroment, let`s suppose the person who will get this project doesn't have the Node installed
FROM node:14.17.6-alpine

# Container's WORKDIR, don't need to worry about that, the image that will be build stay in this dir
WORKDIR /app

# Environment variable
ENV AN_EXAMPLE=Dev

# First it needs to copy the package.json from here to container's workdir (/app)
COPY package.json .
# COPY package-lock.json .

# Run npm install to do the install of all dependencies from package.json
RUN npm install

# Now it'll just copy all the files from here to the workdir
COPY . .

# It just tell which port you need to expose, what port the app needs
EXPOSE 3000

# Now it'll use the CMD to do the initialization
CMD ["npm", "start"]