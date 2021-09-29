FROM python:3.7-alpine3.11
LABEL maintainer="eslam.adel.muhammad@gmail.com"

RUN mkdir /app
COPY gethostname.py /app/
WORKDIR /app
RUN pip install --no-cache-dir Flask==1.1.2

# COPY gethostname.py /app/gethostname.py

EXPOSE 8080

CMD ["python","/app/gethostname.py"]