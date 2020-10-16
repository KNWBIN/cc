FROM golang
RUN git clone https://github.com/mingcheng/prometheus-smart-exporter.git
RUN cd prometheus-smart-exporter && make
