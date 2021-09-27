FROM python:3.7-alpine3.11
LABEL maintainer="eslam.adel.muhammad@gmail.com"

RUN mkdir /app
COPY hello.py /app/
WORKDIR /app
RUN pip install --no-cache-dir Flask==1.1.2

COPY hello.py /app/hello.py

EXPOSE 8080

CMD ["python","/app/gethostname.py"]