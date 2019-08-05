FROM node:latest as buildContainer
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install pm2 -g

RUN mkdir -p /var/app
WORKDIR /var/app

COPY ./dist/ /var/app/

EXPOSE 4201
EXPOSE 8000
EXPOSE 80
EXPOSE 4000

CMD ["pm2-runtime", "./dist/server.js"]

