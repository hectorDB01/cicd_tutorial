FROM ubuntu:latest
MAINTAINER Duy Bang "bangb2111971@student.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential python3.12-venv
RUN python3 -m venv venv
ENV PATH venv/bin:$PATH
ADD . /flask_app
WORKDIR /flask_app
RUN pip3 install -r requirements.txt --break-system-packages
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
