REDIS_VERSION ?= v7.0.5
EXPORTER_VERSION ?= v1.44.0

IMG ?= kangdroid/opstree-redis:$(REDIS_VERSION)
EXPORTER_IMG ?= kangdroid/opstree-redis-exporter:$(EXPORTER_VERSION)

build-redis-push:
	docker buildx build --platform linux/amd64,linux/arm64 -t ${IMG} -f Dockerfile . --push

build-redis-exporter:
	docker buildx build --platform linux/amd64,linux/arm64 -t ${EXPORTER_IMG} -f Dockerfile.exporter . --push