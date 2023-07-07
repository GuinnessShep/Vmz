FROM ubuntu:latest

RUN apt-get update && apt-get install -y tmate

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
