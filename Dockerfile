#Docker build file for the moodEchoServer
#Using .dockerignore to remove files from context that is sendt to docker deamon for build
FROM node

COPY css /src/css/
COPY img /src/img/
COPY js /src/js/
COPY lib /src/lib/
COPY Gruntfile.js /src/
COPY index.html /src/
COPY package.json /src/

ENV NODE_ENV=production
ENV PORT=8000


WORKDIR /src/

RUN npm install grunt --save
RUN npm install grunt-cli --save
RUN npm install

CMD ["grunt","serve"]

EXPOSE 8000