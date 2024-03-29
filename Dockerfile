FROM python:3.7

WORKDIR /usr/src/app

SHELL ["/bin/bash", "-c"]

RUN echo export PATH='/root/.local/bin:$PATH' >> ~/.bashrc &&\
    source ~/.bashrc &&\
    pip install awsebcli --upgrade --user &&\
    pip install awscli &&\
    pip install awslogs &&\
    curl -fsSL https://get.docker.com | /bin/bash
