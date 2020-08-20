FROM elasticsearch:7.6.0
MAINTAINER yangbingdong <yangbingdong1994@gmail.com>
ARG TZ 
ENV TZ=${TZ:-"Asia/Shanghai"}
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.6.0/elasticsearch-analysis-ik-7.6.0.zip \
  && /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v7.6.0/elasticsearch-analysis-pinyin-7.6.0.zip \
  && /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-stconvert/releases/download/v7.6.0/elasticsearch-analysis-stconvert-7.6.0.zip \
  && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
  && echo $TZ > /etc/timezone 
