FROM python

WORKDIR /app

# COPY requirements.txt requirements.txt
RUN pip3 install pycaret

COPY . .

CMD [ "python3", "./test.py"]