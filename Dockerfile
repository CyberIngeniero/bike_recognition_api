FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
COPY ./model /model
COPY ./app /app
EXPOSE 8000
CMD ["python", "main.py"]
.
.
.
.