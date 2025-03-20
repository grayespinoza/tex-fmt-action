FROM ubuntu:latest

RUN apt-get update && apt-get install -y tex-fmt

COPY entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
