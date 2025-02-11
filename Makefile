.PHONY: run migrate create-migrations

run:
    @uvicorn workout_api.main:app --reload --host 0.0.0.0 --port 8000

create-migrations:
    @PYTHONPATH=$PYTHONPATH:$(pwd) alembic revision --autogenerate -m "$(d)"

migrate:
    @PYTHONPATH=$PYTHONPATH:$(pwd) alembic upgrade head

rollback:
    @PYTHONPATH=$PYTHONPATH:$(pwd) alembic downgrade -1