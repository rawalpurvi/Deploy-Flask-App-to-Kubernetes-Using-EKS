FROM python:3.7.0-stretch

COPY . /app
WORKDIR /app

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

CMD ["gunicorn", "-b", ":8080", "main:APP"]