VERSION=$(shell cat jenkins-version)
IMAGE=dimasmith/jenkins-docker

BUILD=build

build: compile
	docker build --tag $(IMAGE):latest $(BUILD)

build-version: compile
	docker build --tag $(IMAGE):$(VERSION) $(BUILD)

publish: build-version
	docker push $(IMAGE):$(VERSION)

version:
	echo $(VERSION)

compile:
	mkdir -p $(BUILD)
	sed -e 's/_version_/$(VERSION)/g' docker/Dockerfile > $(BUILD)/Dockerfile

clean:
	rm -rf $(BUILD)
