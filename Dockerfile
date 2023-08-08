FROM ghcr.io/arkadiuminc/az:main

WORKDIR /opt

RUN curl -sSL https://releases.hashicorp.com/terraform/1.5.4/terraform_1.5.4_linux_amd64.zip -o terraform.zip && \
    unzip terraform.zip -d /usr/bin && rm terraform.zip

