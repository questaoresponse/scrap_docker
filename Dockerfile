FROM node:20-alpine

RUN apk add --no-cache git

RUN git clone https://www.github.com/questaoresponse/scrap

WORKDIR /scrap

RUN npm install

RUN npx puppeteer browsers install chrome

CMD ["node", "main.cjs"]
