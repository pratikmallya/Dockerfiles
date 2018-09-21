SHELL := bash
dockerfiles := $(shell ls | grep "Dockerfile.*")
DHUSERNAME := "pratikmallya"

.PHONY: build
build:
	for dockerfile in $(dockerfiles) ; do \
		docker build -t $(DHUSERNAME):`echo $${dockerfile} | cut -d '.' -f2` -f $$dockerfile  . ; \
	done

.PHONY: lint
lint:
	curl -L https://github.com/hadolint/hadolint/releases/download/v1.13.0/hadolint-Linux-x86_64 -o hadolint
	chmod +x hadolint
	./hadolint $(dockerfiles)
