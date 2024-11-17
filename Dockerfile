FROM node:lts-bullseye-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    bash git yarn python3 make g++ \
    && yarn global add gatsby-cli
    # && npm install --save gatsby-source-contentful \
    # && npm install --save dotenv

# docker-compose up -d
# docker exec -it app /bin/bash
# gatsby new gatsby