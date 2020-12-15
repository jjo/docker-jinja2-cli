VERSION=0.7.0
IMAGE=xjjo/docker-jinja2-cli

build:
	docker build -t $(IMAGE):$(VERSION) .
	docker build -t $(IMAGE):latest .

push: build
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):latest

.PHONY: push build
