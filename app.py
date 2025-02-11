from fastapi import FastAPI, HTTPException
from sqlalchemy import create_engine, text
import os

app = FastAPI(
    title="Workout API",
    description="API for Crossfit Competition",
    version="1.0.0"
)

DATABASE_URL = os.getenv("DATABASE_URL", "postgresql://workout:workout@db:5432/workout")

@app.get("/")
async def hello():
    return {"message": "Hello World in Python!"}

@app.get("/check-db")
async def check_db():
    try:
        engine = create_engine(DATABASE_URL)
        with engine.connect() as conn:
            result = conn.execute(text("SELECT 1"))
            return {"status": "connected", "message": "Database connection successful"}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)