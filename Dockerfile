FROM golang
RUN git clone https://github.com/maoqide/mysql-operator.git
RUN cd mysql-operator && go get -v ./... && sh hack/build.sh
