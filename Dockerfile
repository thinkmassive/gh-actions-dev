FROM alpine:3.15

RUN adduser -D myuser

COPY hello.sh /home/myuser
RUN chown -R myuser /home/myuser

HEALTHCHECK CMD true
USER myuser:myuser
WORKDIR /home/myuser
ENTRYPOINT ["/home/myuser/hello.sh"]
