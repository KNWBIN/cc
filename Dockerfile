FROM golang
RUN git clone https://github.com/rancher/rke.git -b v1.2.8 && cd rke && sed -ir 's#duration365d(.*)5$#duration365d\15\ *\ 10#g' ./pki/cert/cert.go && make
