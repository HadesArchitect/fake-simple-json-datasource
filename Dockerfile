FROM node:11-alpine
WORKDIR /opt/app
CMD node index.js

COPY . .
RUN npm install --package-lock-only && npm cache clean --force
