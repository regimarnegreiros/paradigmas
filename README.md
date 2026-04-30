# Paradigmas

Este repositório contém uma demonstração prática de quatro paradigmas fundamentais da computação, utilizando Docker para isolar os ambientes de execução e garantir que cada linguagem rode com suas dependências específicas sem conflitos no sistema hospedeiro.

## Preparação
Antes de começar, compile todos os ambientes:
```bash
docker compose build
```

## Execução (Um por vez)
Use estes comandos para mostrar cada paradigma individualmente:

#### Imperativo (Pascal)
```bash
docker compose run pascal
```

#### Orientado a Objetos (Smalltalk)
```bash
docker compose run smalltalk
```

#### Funcional (Haskell)
```bash
docker compose run haskell
```

#### Lógico (Prolog)
```bash
docker compose run prolog
```

## Rodar Tudo
Para ver todas as linguagens respondendo ao mesmo tempo:
```bash
docker compose up
```

## Limpeza
Ao final da apresentação, limpe os containers:
```bash
docker compose down
```
