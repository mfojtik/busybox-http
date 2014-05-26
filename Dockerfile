FROM busybox

RUN mkdir -p /usr/mock/source

ADD index.html /usr/mock/source/index.html

ENV STI_SCRIPTS_URL https://raw.githubusercontent.com/mfojtik/busybox-http/master/.sti/bin

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "echo", "This is a builder image."]
