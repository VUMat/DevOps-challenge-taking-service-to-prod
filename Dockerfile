FROM node:16

# Create app directory

ENV MONGO_URI="mongodb+srv://user1:uIaZDhT9XEo0mzmk@cluster0.ifgjkqn.mongodb.net/?retryWrites=true&w=majority"

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "./bin/www" ] 
