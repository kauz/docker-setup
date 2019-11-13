FROM node:alpine AS builder

WORKDIR '/srv/app'

COPY package*.json ./
RUN npm install --production
COPY . .

RUN npm run build


FROM nginx
COPY --from=builder /srv/app/build /usr/share/nginx/html
