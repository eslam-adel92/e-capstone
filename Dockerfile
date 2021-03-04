FROM python:3.7-alpine3.11

RUN pip install flask

COPY hello.py /srv/hello.py

EXPOSE 8080

CMD ["python","/srv/hello.py"]