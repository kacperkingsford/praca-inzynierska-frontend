FROM node:14-alpine

WORKDIR '/app'

COPY package.json .

RUN npm i

COPY . .

RUN npm run build

FROM nginx

EXPOSE 80

COPY --from=0 /app/dist/myhelp /usr/share/nginx/html
