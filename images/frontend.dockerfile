FROM node:16-bullseye-slim

WORKDIR /app

## Show the current context directory
RUN echo "Current directory: $(pwd)"

COPY ../frontend/.next ./.next
COPY ../frontend/package.json ./
COPY ../frontend/package-lock.json ./

RUN npm install --only=production --legacy-peer-deps

EXPOSE 3000

CMD ["npm", "start"]

#docker build -t frontend-app -f images/frontend.dockerfile .
#API_ENDPOINT=http://localhost:4000
#docker run -it -p 3000:3000 -e API_ENDPOINT=http://localhost:4000 frontend-app
