FROM golang
RUN apt update && apt install build-essential -y && apt install rsync jq -y
RUN cd /go/src/k8s.io/ && git clone https://gitee.com/wbdevops/kubernetes.git 
RUN cd /go/src/k8s.io/kubernetes && make all WHAT=cmd/kubeadm GOFLAGS=-v
