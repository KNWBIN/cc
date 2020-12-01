FROM golang
RUN git clone https://gitee.com/wbdevops/kubernetes.git
RUN cd kubernetes && make all WHAT=cmd/kubeadm GOFLAGS=-v
