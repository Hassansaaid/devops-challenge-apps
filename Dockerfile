FROM node:latest
EXPOSE 5000
COPY ./api /app
WORKDIR /app
ENTRYPOINT ["npm","start"]
