FROM golang
RUN git clone https://github.com/rancher/rke.git -b v1.2.8 
RUN cd rke && sed -ri 's#duration365d(.*)5$#duration365d\15\ *\ 10#g' ./pki/cert/cert.go
RUN go generate && make
