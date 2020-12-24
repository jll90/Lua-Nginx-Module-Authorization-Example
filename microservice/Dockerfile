FROM node:12.20.0-alpine3.10

EXPOSE 3000

RUN mkdir /app
COPY index.js /app/index.js

WORKDIR /app

CMD ["node", "index.js"]
