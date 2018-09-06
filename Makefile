DOCKER_REGISTRY=docker.weekendesk.com:5000
DOCKER_IMAGE_NAME=promtool
PROMTOOL_VERSION=

.PHONY: build publish sync

build: 
	docker build --build-arg=PROMTOOL_VERSION=$(PROMTOOL_VERSION) . -t $(DOCKER_REGISTRY)/$(DOCKER_IMAGE_NAME):$(PROMTOOL_VERSION)
	
publish: 
	docker push $(DOCKER_REGISTRY)/$(DOCKER_IMAGE_NAME):$(PROMTOOL_VERSION)

sync: build publish