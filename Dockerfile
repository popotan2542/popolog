FROM node:lts-bullseye-slim

# 作業ディレクトリの設定
WORKDIR /app

# 必要なパッケージのインストール
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    bash \
    git \
    python3 \
    make \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# git リポジトリのクローン
RUN git clone https://github.com/popotan2542/popolog.git .

# 必要なNode.jsパッケージのインストール
WORKDIR /app/blog
RUN npm install --legacy-peer-deps && \
    npm install -g gatsby-cli --legacy-peer-deps && \
    npm install --save gatsby-source-contentful dotenv --legacy-peer-deps

# docker-compose up -d
# docker exec -it app /bin/bash
# gatsby new gatsby
