FROM ubuntu:18.04

RUN apt-get update && apt-get -y update && apt-get install -y apt-utils
RUN apt-get install -y build-essential python3.7 python3-pip python3-dev
RUN pip3 -q install pip --upgrade

RUN mkdir /src
COPY requirements.txt /src

RUN apt-get -y install git

RUN cd src && pip3 install -r requirements.txt --use-feature=2020-resolver

RUN cd src && git clone https://github.com/jgmakin/utils_jgm.git && pip3 install -e utils_jgm

RUN cd src && git clone https://github.com/jgmakin/machine_learning.git && pip3 install -e machine_learning

RUN cd src && git clone https://github.com/jgmakin/ecog2txt.git && pip3 install -e ecog2txt

WORKDIR /opt

CMD [ "bash" ]

