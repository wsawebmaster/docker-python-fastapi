FROM python:3.9-slim

# Install dependencies required for pyenv
RUN apt-get update && apt-get install -y \
    git \
    curl \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev \
    postgresql-client

# Install pyenv
RUN curl https://pyenv.run | bash

# Add pyenv to PATH
ENV PYENV_ROOT /root/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

# Install Python version and create virtual environment
RUN pyenv install 3.9.0
RUN pyenv global 3.9.0
RUN pyenv virtualenv 3.9.0 workoutapi
RUN pyenv global workoutapi

WORKDIR /code


# Install required packages
RUN pip install fastapi uvicorn sqlalchemy psycopg2-binary alembic

COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy Makefile first
COPY Makefile ./

# Copy Makefile and alembic files first
COPY Makefile alembic.ini ./
COPY alembic ./alembic/

# Copy the rest of the application
COPY . .

# Initialize database schema
# RUN PYTHONPATH=. make migrate && \
#     PYTHONPATH=. make create-migrations d="init_db"

CMD ["python", "app.py"]