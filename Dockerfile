FROM alpine:3.6
MAINTAINER JuanJo Ciarlante <juanjosec@gmail.com>

# Update and upgrade
RUN apk update && apk upgrade

# Install python and pip
RUN apk add python py-pip

# Clean APK cache
RUN rm -rf /var/cache/apk/*

RUN pip install jinja2-cli==0.6.0 pyyaml

CMD ["/usr/bin/jinja2"]
