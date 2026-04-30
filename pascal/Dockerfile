FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y fpc

WORKDIR /app
COPY main.pas .

# Compila o arquivo Pascal
RUN fpc main.pas

CMD ["./main"]
