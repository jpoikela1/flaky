FROM python:3-slim-stretch

LABEL maintainer="https://github.com/jpalomaki"

WORKDIR /usr/src/app

EXPOSE 5000

COPY requirements.txt ./
COPY app.py ./

RUN pip install --no-cache-dir -r requirements.txt

USER daemon

CMD ["python", "app.py"]
