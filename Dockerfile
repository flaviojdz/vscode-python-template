FROM python:3.9.0

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

COPY cmd.bash /usr/bin/

WORKDIR /root/

COPY app app

CMD cmd.bash
