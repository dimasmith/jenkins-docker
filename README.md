Jenkins server with docker
==========================

Self-built docker image for Jenkins.

## Building image locally

Makefile is provided to build image.

jenkins-version file should contain version of jenkins which image will contain.
Makefile will use version from this file both as version of base image
and as version of resulting image.

On compile step make will replace `_version_` placeholder in source Dockerfile
with jenkins version and place resulting file into `build` directory.

`build` will create an image with `latest` tag using that compiled Dockerfile

### Targets

* `clean` - removes build directory;
* `compile` - creates build directory. Copies dockerfile there and set proper version of base image;
* `version` - prints version specified in `jenkins-version` file;
* `build` - builds image from compiled Dockerfile. Uses `latest` as tag;
* `build-version` - builds image with version as in `jenkins-version` file;
* `publish` - pushes image to docker hub;
