FROM registry.cn-hangzhou.aliyuncs.com/aiserver/code:golang
RUN apt update && apt install build-essential -y && apt install rsync jq -y
RUN  git config --global http.postBuffer 50000000 && git clone https://gitee.com/wbdevops/kubernetes.git -b v1.19.11
RUN cd kubernetes && make all WHAT=cmd/kubeadm GOFLAGS=-v
