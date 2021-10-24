FROM python:3.8
WORKDIR /app/myprojec/
COPY ./requirements.txt /app
RUN pip install -r /app/requirements.txt
COPY ./ /app
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
