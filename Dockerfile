FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install @prisma/client prisma dotenv

RUN npx prisma generate

EXPOSE 3333

CMD ["npm", "start"]
