FROM golang
RUN apt update && apt install build-essential -y && apt install rsync jq -y
RUN  git clone https://gitee.com/wbdevops/kubernetes.git 
RUN cd kubernetes && make all WHAT=cmd/kubeadm GOFLAGS=-v
