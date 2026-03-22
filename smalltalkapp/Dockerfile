FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    gnu-smalltalk \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["gst"]
