FROM ubuntu:latest

LABEL maintainer="Patrick Avakian moxart@moxart.ir"

RUN apt-get update && apt-get upgrade -y && \
    apt-get install python3-venv -y && \
    apt-get install python-dev python3-pip -y

COPY . /app

WORKDIR /app/flask

RUN pip3 --no-cache-dir install -r requirements.txt 

EXPOSE 5000

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]