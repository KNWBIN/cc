FROM golang
RUN git clone https://gitee.com/wbdevops/prometheus-smart-exporter.git
RUN cd prometheus-smart-exporter && make
