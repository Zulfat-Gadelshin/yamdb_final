FROM python:3.8.5

RUN mkdir /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . /code
WORKDIR /code
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
