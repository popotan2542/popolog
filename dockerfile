FROM node:20.18.1-bullseye
WORKDIR /app
COPY popolog/ /app
EXPOSE 3000

# docker exec -it popolog /bin/bash
# cd popolog
# npm run dev -- --host --port 3000