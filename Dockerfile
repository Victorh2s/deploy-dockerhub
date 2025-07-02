FROM node:22.14.0

WORKDIR /home/api

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 80

CMD ["npm", "start"]