IM?=python:3.7-slim
REPO?=us-central1-docker.pkg.dev/my-repo

default:

img:
	docker pull $(IM)

img_tag:
	docker tag $(IM) $(REPO)/build/$(IM) 

img_push:
	docker push $(REPO)/build/$(IM)

build: img img_tag img_push
