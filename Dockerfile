FROM golang
RUN git clone https://github.com/rancher/rke.git -b v1.2.8 && cd rke && make
