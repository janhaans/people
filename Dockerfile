FROM python:3-alpine

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY server.py .
COPY templates ./templates

EXPOSE 5000

ENV FLASK_APP=server FLASK_ENV=development

CMD ["flask", "run", "--host", "0.0.0.0"]