FROM ubuntu:16.04

LABEL maintainer="jpalomaki"

ENV app flaky
ENV app_dir /flaky
ENV app_user daemon

EXPOSE 5000

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY requirements.txt $app_dir/requirements.txt
COPY app.py $app_dir

WORKDIR $app_dir

RUN pip install -r requirements.txt

USER $app_user

CMD [ "./app.py" ]

