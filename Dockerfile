FROM alpine:3.7
MAINTAINER JuanJo Ciarlante <juanjosec@gmail.com>

# Update and upgrade, install python, pip3 then jinja2-cli
RUN apk update && apk upgrade && \
    apk add python3 py3-pip && rm -rf /var/cache/apk/* && \
    pip3 install jinja2-cli==0.7.0 pyyaml

CMD ["/usr/bin/jinja2"]
