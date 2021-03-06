VERSION=$(shell cat jenkins-version)
IMAGE=dimasmith/jenkins-docker

SRC=src
BUILD=build

build: compile
	docker build --tag $(IMAGE):latest $(BUILD)

build-version: compile
	docker build --tag $(IMAGE):$(VERSION) $(BUILD)

publish: build build-version
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):latest

version:
	echo $(VERSION)

compile:
	mkdir -p $(BUILD)
	sed -e 's/_version_/$(VERSION)/g' $(SRC)/Dockerfile > $(BUILD)/Dockerfile

clean:
	rm -rf $(BUILD)
