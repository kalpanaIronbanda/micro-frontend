# FROM reactjs 
# WORKDIR /build 
# COPY . /build 
# CMD ['npm start']

FROM node:alpine AS build_stage
WORKDIR '/app'
COPY package.json .
RUN npm install
RUN npm install axios
COPY . .
RUN npm run build

FROM nginx
COPY --from=build_stage /app/build /usr/share/nginx/html