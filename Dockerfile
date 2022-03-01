FROM ubuntu:latest

WORKDIR /opt

RUN apt-get update && apt-get install -y gnupg software-properties-common curl && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg -o gpg.key && apt-key add gpg.key && \
    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
    apt-get update && apt-get install terraform && \
    apt-get clean
