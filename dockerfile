FROM python:3.8

COPY requirements.txt  .
RUN  pip3 install -r requirements.txt

COPY app.py .

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]