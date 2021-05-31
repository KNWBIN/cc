FROM golang
RUN apt update && apt install build-essential -y && apt install rsync jq -y
RUN  git config --global http.postBuffer 50000000 && git clone -b v1.19.11 https://gitee.com/wbdevops/kubernetes.git 
RUN cd kubernetes && make all WHAT=cmd/kubeadm GOFLAGS=-v
