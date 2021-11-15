FROM ubuntu:20.04
MAINTAINER Sam
RUN apt-get update -y && apt-get install -y python3-pip
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python3" ]
CMD [ "start.py" ]

