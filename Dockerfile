FROM --platform=linux/amd64 node:21.7.1-alpine AS node
WORKDIR /app
COPY . /app
RUN corepack enable
RUN yarn install --immutable
CMD ["yarn", "tsx", "main.ts"]
