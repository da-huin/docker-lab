FROM ubuntu:20.04

ENV TZ Asia/Seoul
ENV SPARK_HOME=/opt/spark
ENV PATH=$SPARK_HOME/bin:$PATH

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install --upgrade pip
RUN apt-get install g++ openjdk-8-jdk python3-dev python3-pip curl -y

# torch
RUN pip3 install torch==1.5.0+cpu torchvision==0.6.0+cpu -f https://download.pytorch.org/whl/torch_stable.html
RUN apt-get install -y wget

# spark
RUN wget http://apache.mirror.cdnetworks.com/spark/spark-3.0.0/spark-3.0.0-bin-hadoop2.7.tgz
RUN tar -xzf spark-3.0.0-bin-hadoop2.7.tgz
RUN mv spark-3.0.0-bin-hadoop2.7 /opt/spark-3.0.0
RUN ln -s /opt/spark-3.0.0 /opt/spark

RUN pip3 install findspark
RUN pip3 install konlpy
# for plotly
RUN pip3 install jupyterlab "ipywidgets>=7.5"
RUN pip3 install requests
RUN pip3 install jsonschema
RUN pip3 install pyyaml
RUN pip3 install pyjwt
RUN pip3 install boto3
RUN pip3 install validator_collection
RUN pip3 install cryptography
RUN pip3 install bs4
RUN pip3 install paramiko
RUN pip3 install cffi
RUN pip3 install setuptools
RUN pip3 install flask
RUN pip3 install pytest
RUN pip3 install flask_cors
RUN pip3 install xlrd
RUN pip3 install pyvirtualdisplay
RUN pip3 install Pillow
RUN pip3 install selenium
RUN pip3 install pandas
RUN pip3 install numpy
RUN pip3 install matplotlib
RUN pip3 install seaborn
RUN pip3 install pandasql
RUN pip3 install plotly
RUN pip3 install pymysql

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN jupyter labextension install jupyterlab-plotly

CMD jupyter lab --ip=0.0.0.0 --port=8888 --allow-root
