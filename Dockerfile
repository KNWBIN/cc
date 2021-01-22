FROM golang
RUN wget https://get.helm.sh/helm-v3.5.0-linux-amd64.tar.gz && tar xvf helm-v3.5.0-linux-amd64.tar.gz && mv linux-amd64/helm /usr/bin/
RUN mkdir -p $GOPATH/src/github.com/rancher && cd $GOPATH/src/github.com/rancher
RUN git clone https://github.com/rancher/rancher.git -b 2.4-head && cd ./rancher  && ./scripts/build
RUN cd $GOPATH/src/github.com/rancher/rancher && ./scripts/package
