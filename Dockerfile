FROM golang
RUN apt update && apt install build-essential -y && apt install rsync jq -y
RUN  git config --global http.postBuffer 20000000 && git clone https://gitee.com/mirrors/Kubernetes.git -b release-1.19
RUN cd kubernetes && make all WHAT=cmd/kubeadm GOFLAGS=-v
