FROM golang
RUN apt update && apt install build-essential -y && apt install rsync jq -y
RUN  git clone https://github.com/kubernetes/kubernetes.git -b release-1.19
RUN cd kubernetes && make all WHAT=cmd/kubeadm GOFLAGS=-v
