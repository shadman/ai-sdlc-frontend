FROM node:18-alpine

RUN apk add --no-cache git curl bash

WORKDIR /app

# Install base frontend dependencies
COPY frontend/package.json /app/package.json
RUN npm install -g @angular/cli && npm install || true

RUN git config --global user.name "AI SDLC" && \
    git config --global user.email "ai@sdlc.local"

EXPOSE 4200

CMD ["bash"]
