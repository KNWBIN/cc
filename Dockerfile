FROM golang
RUN git clone https://github.com/Sheridan/smartctl_exporter.git
RUN cd smartctl_exporter
RUN go get -v ./...
RUN make
