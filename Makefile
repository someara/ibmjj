#
# Make
#

docker-multiarch:
	@echo "build docker multiarch images"
	docker buildx install
	docker buildx build --push --platform linux/386,linux/amd64,linux/arm/v5,linux/arm/v6,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/riscv64,linux/s390x -t someara/ztlogo . --push
