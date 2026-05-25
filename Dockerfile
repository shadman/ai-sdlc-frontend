FROM node:18-alpine

RUN apk add --no-cache git curl bash

WORKDIR /app

# Placeholder: dependencies will come from mounted volume
RUN echo "# Frontend will install its own dependencies at runtime"

RUN git config --global user.name "AI SDLC" && \
    git config --global user.email "ai@sdlc.local"

EXPOSE 4200

CMD ["bash"]
