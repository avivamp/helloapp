FROM node
WORKDIR /code
COPY package.json /code
RUN npm install
COPY . /code
CMD node index.js
EXPOSE 8082