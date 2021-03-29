FROM java:8

ENV VERSION=1.32.0
ENV LOG_LEVEL=WARN

RUN mkdir /maxwell \
    && cd /maxwell/ \
    && wget https://github.com/zendesk/maxwell/releases/download/v-"$VERSION"/maxwell-"$VERSION".tar.gz
    
WORKDIR /maxwell

RUN tar -zxvf maxwell-"$VERSION".tar.gz -C /maxwell
EXPOSE 8080

COPY run.sh /maxwell/run.sh
CMD ["/bin/bash","run.sh"]
