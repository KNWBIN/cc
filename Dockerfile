FROM golang
RUN git clone -b release-1.19 https://gitee.com/wbdevops/kubernetes.git 
RUN cd kubernetes && make all WHAT=cmd/kubeadm GOFLAGS=-v
