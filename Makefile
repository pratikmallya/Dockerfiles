dockerhub_username="pratikmallya"
.PHONY: build
build:
	dockefiles=$(ls | grep "Dockerfile.*")
	for dockerfile in ${dockerfiles}; do
		tag=$(echo "$dockerfile" | cut -d '.' -f2)
		docker build -f $dockerfile . -t "${dockerhub_username}/${tag}"
	done

.PHONY: push
push: build
	docker login -u $DHUSERNAME -p $DHPASSWORD
	dockefiles=$(ls | grep "Dockerfile.*")
	for dockerfile in ${dockerfiles}; do
		tag=$(echo "$dockerfile" | cut -d '.' -f2)
		docker push "${dockerhub_username}/${tag}"
	done
