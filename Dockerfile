FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /bike_app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./model ./model

COPY ./app ./app

# EXPOSE 8000

# CMD ["python", "./app/main.py"]

CMD uvicorn --port $PORT --host 0.0.0.0 main:app --reload