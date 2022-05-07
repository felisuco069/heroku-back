FROM node:16-alpine AS base
RUN mkdir -p /usr/app
WORKDIR /usr/app

# Build backend
FROM base AS build-backend
COPY ./ ./
RUN npm ci
RUN npm run build
