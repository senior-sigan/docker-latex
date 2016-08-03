TAG = sigan/latex:pscyr

build:
	docker build --tag $(TAG) --rm .

push:
ifdef REGISTRY
	docker tag $(TAG) $(REGISTRY)/$(TAG)
	docker push $(REGISTRY)/$(TAG)
else
	docker push $(TAG)
endif

purge:
	docker ps -a -q | xargs docker rm -f --volumes || true
	docker images -q | xargs docker rmi -f

default: build
