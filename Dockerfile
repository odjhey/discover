FROM node:16-alpine as builder
WORKDIR /usr/src/app
COPY rollup.config.js ./
COPY package*.json ./

RUN npm ci
COPY ./src ./src
COPY ./public ./public
COPY ./tsconfig.json ./tsconfig.json
RUN npm run build


FROM nginx:alpine
COPY --from=builder /usr/src/app/public /usr/share/nginx/html
EXPOSE 80
