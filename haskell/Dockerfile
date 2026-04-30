FROM haskell:9

WORKDIR /app
COPY Main.hs .

# Compila o código Haskell
RUN ghc -o programa Main.hs

CMD ["./programa"]
