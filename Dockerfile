# pull the official base image (Background o.s for container)
 FROM node:17-alpine3.14
# set working direction (directory for my project)
 WORKDIR /app
# set environment path
 ENV PATH="./node_modules/.bin:$PATH"
# Copy everything from local machine to our server, second dot refers to the directory on the container.
 COPY . .
# lets build the application
 #RUN npm install react-scripts -g --silent
 RUN yarn run build
 
 # # start an application (starting our react server)
 CMD ["yarn", "start"]