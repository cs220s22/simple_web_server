FROM python:slim

COPY requirements.txt .
COPY app.py .

RUN python3 -m venv .venv
RUN .venv/bin/pip3 install -r requirements.txt

CMD [".venv/bin/python3", "app.py"]
