FROM node:20.12.0-alpine3.19

WORKDIR /app
COPY . .

RUN npm install
RUN npm run build

# Expose a port to communicate with the React app
EXPOSE 5173

# Start your React app
CMD ["npm", "run", "dev"]


