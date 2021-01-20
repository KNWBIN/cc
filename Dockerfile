FROM golang
RUN mkdir -p $GOPATH/src/github.com/rancher && cd $GOPATH/src/github.com/rancher
RUN git clone https://github.com/rancher/rancher.git  && cd $GOPATH/src/github.com/rancher/rancher  && ./scripts/build
RUN ./scripts/package
