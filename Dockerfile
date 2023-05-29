FROM ghcr.io/arkadiuminc/az:main

WORKDIR /opt

RUN curl -sSL https://releases.hashicorp.com/terraform/1.4.6/terraform_1.4.6_linux_amd64.zip -o terraform.zip && \
    unzip terraform.zip -d /usr/bin && rm terraform.zip

