#
# Make
#

docker-multiarch:
	@echo "build docker multiarch images"
	docker buildx install
	docker buildx build --push --platform linux/amd64,linux/ppc64le,linux/s390x -t someara/ibmjj:1.0.0 . --push
