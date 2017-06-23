VERSION=2.46.3
IMAGE=dimasmith/jenkins-docker

build:
	docker build --tag $(IMAGE):latest docker/

build-version:
	docker build --tag $(IMAGE):$(VERSION) docker/

publish: build-version
	docker push $(IMAGE):$(VERSION)

