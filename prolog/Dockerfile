FROM swipl:latest

WORKDIR /app
COPY main.pl .

# Roda o arquivo em modo batch (não interativo)
CMD ["swipl", "-s", "main.pl"]