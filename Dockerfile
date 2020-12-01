FROM k8s.gcr.io/kube-cross
RUN cd /go/src/k8s.io/ && git clone https://gitee.com/wbdevops/kubernetes.git 
RUN cd /go/src/k8s.io/kubernetes && make all WHAT=cmd/kubeadm GOFLAGS=-v
