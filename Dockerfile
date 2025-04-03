FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache python3 make g++ pkgconfig libc6-compat

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE 6880

CMD ["node", "polaris.js"]