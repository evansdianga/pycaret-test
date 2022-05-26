FROM python

WORKDIR /app

RUN apt-get update && apt-get install -y libgomp1
COPY requirements.txt requirements.txt

RUN pip install --trusted-host pypi.python.org -r requirements.txt
# RUN pip3 install pycaret

COPY . .

CMD [ "python3", "./test.py"]