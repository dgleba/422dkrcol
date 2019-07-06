FROM python:3.6

ADD . /app

RUN pip install -r requirements.txt

# ENTRYPOINT ["sh", "-c", "pip install -r requirements.txt && python setup.py install && run_server"]
ENTRYPOINT ["sh", "-c", "main.py"]