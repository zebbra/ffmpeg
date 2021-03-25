FROM node:12.21.0-alpine3.10

ARG INPUT_STREAM_URL
ARG OUTPUT_STREAM_PORT

RUN apk add  --no-cache ffmpeg

WORKDIR /app

COPY package.json ./
RUN yarn install
COPY . .

ENV NODE_ENV production
ENV PORT OUTPUT_STREAM_PORT

ENV INPUT_STREAM_URL=${INPUT_STREAM_URL}
ENV OUTPUT_STREAM_PORT=${OUTPUT_STREAM_PORT}

EXPOSE ${INPUT_STREAM_PORT}

CMD ["yarn", "start"]
