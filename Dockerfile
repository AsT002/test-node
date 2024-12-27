FROM node

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package*.json /usr/src/app

RUN npm install

COPY . /usr/src/app

EXPOSE 4000
CMD ["npm", "start"]


# docker build -t ashim/simple-backend . // -> build image with tag name "ashim/simple-backend"
# docker run -p 4000:4000 <image_id> // -> run the image with port mapping local:container
# docker stop <container_id> /// -> stop the container
# docker ps // -> list all the running containers
# docker ps -a // -> list all the containers
