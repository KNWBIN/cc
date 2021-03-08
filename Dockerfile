FROM golang
RUN wget https://get.helm.sh/helm-v3.5.0-linux-amd64.tar.gz && tar xvf helm-v3.5.0-linux-amd64.tar.gz && mv linux-amd64/helm /usr/bin/
RUN git clone -b v2.4.8 https://github.com/rancher/rancher.git
RUN cd rancher && ./scripts/ci
