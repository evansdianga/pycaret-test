FROM python:3.8-slim-buster

WORKDIR /app

# COPY requirements.txt requirements.txt
RUN pip3 install pycaret

COPY . .

CMD [ "python3", "./test.py"]