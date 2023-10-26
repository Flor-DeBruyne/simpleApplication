# NODE VERSION 18
FROM node:18

# POORT 3000
EXPOSE 3000

WORKDIR /app

# COPY APPLICATION CODE
COPY . /app



# COPY package.json AND  yarn.lock TO THE CONTAINER
COPY package.json yarn.lock ./

# INSTALL APPLICATTON DEPENDENCIES
RUN yarn install --frozen-lockfile

# REMOVE package.json AND yarn.lock TO CREATE A SMALLER IMAGE
RUN rm package.json yarn.lock 

# START APPLICATTION
CMD ["yarn", "start"]




