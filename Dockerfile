FROM node:lts-alpine
RUN apk update && apk add git && mkdir /opt/express_example
WORKDIR /opt/express_example
COPY . .
RUN npm i
EXPOSE 3000
CMD npm start