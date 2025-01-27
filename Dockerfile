FROM node:16-alpine
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY . .
VOLUME [ "/app/node_modules" ]
CMD ["npm", "run", "start"]