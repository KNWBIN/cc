FROM golang
RUN apt update && apt install build-essential -y && apt install rsync jq -y
RUN  git config --global http.postBuffer 20000000 && git clone https://gitee.com/wbdevops/Kubernetes.git -b release-1.19
RUN cd Kubernetes && make all WHAT=cmd/kubeadm GOFLAGS=-v
