FROM node:latest
EXPOSE 5000
COPY ./api /app
ENTRYPOINT ["npm","start"]
