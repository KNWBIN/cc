FROM golang
RUN mkdir -p $GOPATH/src/github.com/rancher && cd $GOPATH/src/github.com/rancher
RUN git clone https://github.com/rancher/rancher.git -b 2.4-head && cd ./rancher  && ./scripts/build
RUN ./scripts/package
