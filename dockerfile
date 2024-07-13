FROM python:3.12.4
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY ./app ./app
CMD [ "python","./app/main.py" ]
#CMD python -m uvicorn app:app --host 0.0.0.O --port 80

