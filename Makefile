ARCH := $(shell uname -m)
link:
	docker build -t wg-link:$(ARCH) . 