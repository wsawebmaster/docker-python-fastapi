# 📂 Desenvolvendo API com FastAPI, Python e Docker

## 📃 Descrição

Neste projeto, iremos desenvolver uma poderosa API assíncrona para uma academia, focada em uma competição de Crossfit. Essa experiência nos ajudará a entender e lidar com operações simultâneas de maneira eficaz e escalável.



## 🚀 Tecnologias Utilizadas

- HTML
- CSS
- JavaScript
- PHP
- MySQL
- Git e Github
- Docker

### Subir Containers do Projeto

    docker-compose up -d

### Acessar o
Projeto: [http://localhost:8000](http://localhost:8000)<br />
API: [http://localhost:8000/docs](http://localhost:8000/docs)<br />
Teste: [http://localhost:8000/check-db](http://localhost:8000/check-db)<br /><br />


Acessar o container python
```sh
# Acessar o container
docker-compose exec python bash

# 1. Limpar migrações existentes (se necessário)
rm -rf alembic/versions/*

# 2. Criar migração inicial
PYTHONPATH=$PYTHONPATH:$(pwd) alembic revision --autogenerate -m "init_db"

# 3. Aplicar migração
PYTHONPATH=$PYTHONPATH:$(pwd) alembic upgrade head

# 4. Verificar tabelas criadas
psql -U workout -d workout -h db -c "\dt"

# 5. Verificar estrutura das tabelas
psql -U workout -d workout -h db -c "\d atletas"
psql -U workout -d workout -h db -c "\d categorias"
psql -U workout -d workout -h db -c "\d centros_treinamento"
```

### 🔍 Troubleshooting

Se encontrar o erro "Can't locate revision":
```bash
# Remover migrações antigas
rm -rf alembic/versions/*

# Recriar migrations do zero
PYTHONPATH=$PYTHONPATH:$(pwd) alembic revision --autogenerate -m "init_db"
PYTHONPATH=$PYTHONPATH:$(pwd) alembic upgrade head

```


### Remover todos os contêineres, redes e volumes definidos no arquivo docker-compose.yml

    docker-compose down

### Remover contêineres, imagens e limpar redes não utilizadas.

    [ "$(docker ps -q)" ] && docker stop $(docker ps -q); [ "$(docker ps -aq)" ] && docker rm $(docker ps -aq); [ "$(docker images -q)" ] && docker rmi $(docker images -q); docker network prune -f

    
---
---

### 📧 Contato

[LinkedIn](https://www.linkedin.com/in/wsawebmaster/)

[wsawebmaster@yahoo.com.br](mailto:wsawebmaster@yahoo.com.br)