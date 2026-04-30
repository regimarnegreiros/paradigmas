FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y gnu-smalltalk

WORKDIR /app
COPY main.st .

# Executa o script Smalltalk
CMD ["gst", "-f", "main.st"]
