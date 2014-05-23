FROM busybox

RUN mkdir -p /usr/mock/source

ADD ./bin /usr/bin/
ADD index.html /usr/mock/source/index.html

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "/usr/bin/run"]
