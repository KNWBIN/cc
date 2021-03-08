FROM golang
RUN wget https://get.helm.sh/helm-v3.5.0-linux-amd64.tar.gz && tar xvf helm-v3.5.0-linux-amd64.tar.gz && mv linux-amd64/helm /usr/bin/
RUN git clone https://github.com/rancher/rancher.git && cd rancher && git checkout v2.4.14
RUN ls && pwd
RUN ./scripts/package
