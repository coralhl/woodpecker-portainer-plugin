FROM python:alpine

WORKDIR /app

COPY ./portainer.py ./portainer.py

RUN apk --no-cache add --update git

RUN pip install pipreqs
RUN pipreqs . --encoding=utf8 --force
RUN pip install -r requirements.txt

RUN chmod +x portainer.py 

CMD ["/usr/local/bin/python", "/app/portainer.py"]