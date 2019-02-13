# Create an image based on https://github.com/mhart/alpine-node/tree/f7fedaee10cf8569f4e3eb2c3391eb244636acb6
FROM node:10-alpine

WORKDIR /RTL

COPY . /RTL

# Install dependencies
RUN npm install

#Run the app server
ENTRYPOINT ["node", "rtl"]
