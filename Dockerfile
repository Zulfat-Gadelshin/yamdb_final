FROM python:3.8
COPY ./ /app
RUN pip install -r /app/requirements.txt
WORKDIR /app/myprojec/
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
