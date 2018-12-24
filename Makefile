.PHONY: run
run:
	docker run --rm --name bpf-dev-env -it hharnisc/bpf-dev-env:latest

.PHONY: build
build:
	docker build -t hharnisc/bpf-dev-env:latest .

.PHONY: force-rebuild
force-rebuild:
	docker build --rm --force-rm -t hharnisc/bpf-dev-env:latest .

