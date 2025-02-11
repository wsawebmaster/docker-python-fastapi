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
    docker-compose exec python bash # Acessar o container

    make create-migrations d="init_db"

    python -m pip install --upgrade pip
pip install alembic # Atualizar pip e instalar dependências
    alembic init alembic # Inicializar Alembic (apenas primeira vez)
    pip freeze > requirements.txt # Criar arquivo de requirements
    # Aplicar migrações existentes
    make migrate

    # Criar nova migração
    make create-migrations d="init_db"
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