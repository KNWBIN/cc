FROM registry.cn-hangzhou.aliyuncs.com/aiserver/code:golang
RUN apt update && apt install build-essential -y && apt install rsync jq -y
RUN  git config --global http.postBuffer 20000000 && git clone https://gitee.com/wbdevops/Kubernetes.git -b release-1.14
RUN cd Kubernetes && make all WHAT=cmd/kubeadm GOFLAGS=-v
