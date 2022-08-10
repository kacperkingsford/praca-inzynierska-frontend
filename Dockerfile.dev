# DEVELOPMENT ONLY
FROM node:14-alpine
#RUN apk add chromium
WORKDIR /app
#ENV CHROME_BIN=/usr/bin/chromium-browser
COPY package.json .
RUN npm install
COPY . .

CMD ["npm", "start"]
