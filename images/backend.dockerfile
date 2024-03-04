FROM node:16-bullseye-slim

WORKDIR /app

## Show the current context directory
RUN echo "Current directory: $(pwd)"

COPY ../backend/dist ./dist
COPY ../backend/package.json ./
COPY ../backend/package-lock.json ./

RUN npm install --only=production --legacy-peer-deps

EXPOSE 4000

CMD ["npm", "start"]

#docker run -it -p 4000:4000 backend-api
