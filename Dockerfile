FROM golang
RUN git clone https://github.com/maoqide/mysql-operator.git
RUN cd mysql-operator
RUN go get -v ./...
RUN sh hack/build.sh
