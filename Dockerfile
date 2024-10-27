FROM python:3.9-slim
RUN apt-get update && apt-get install -y gcc libpq-dev && rm -rf /var/lib/apt/lists/*
RUN apt update -y
WORKDIR /app
COPY requirement.txt /app
RUN pip3 install -r requirement.txt
COPY . /app
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
#CMD ["gunicorn", "--bind", "0.0.0.0:8000", "ecommerce.wsgi"]
