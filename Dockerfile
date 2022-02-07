FROM node:latest

COPY ./package.json /src/package.json
RUN cd /src && npm install
COPY  ./ /src

WORKDIR /src
ENV some=thing
ENV else=other
ENV hello=world
#ENV DEBUG=*

CMD ["npm", "start"]
