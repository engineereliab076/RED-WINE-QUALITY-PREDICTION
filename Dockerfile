FROM python:python:3.12.0b2-slim-buster

RUN apt update -y && apt install awscli -y
WORKDIR /app  

COPY . /app  
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]