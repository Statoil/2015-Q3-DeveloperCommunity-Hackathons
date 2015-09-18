#Docker build file for the moodEchoServer
#Using .dockerignore to remove files from context that is sendt to docker deamon for build
FROM node

COPY css /src/css/
COPY img /src/img/
COPY js /src/js/
COPY lib /src/lib
COPY plugin /src/plugin/
COPY Gruntfile.js /src/
COPY index.html /src/
COPY package.json /src/
COPY .travis.yml /src/

WORKDIR /src/

RUN npm install -g grunt grunt-cli 
RUN npm install

ENV NODE_ENV=production
ENV PORT=8000

CMD ["grunt","serve"]

EXPOSE 8000