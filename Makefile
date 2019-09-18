# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOTEST=$(GOCMD) test
GOLANGCI=golangci-lint

.PHONY: all
all: proto test lint  

.PHONY: test
test:
	$(GOTEST) -v ./...

.PHONY: lint
lint:
	curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin v1.18.0
	$(GOLANGCI) run

.PHONY: proto
proto:
	wget https://protobuf.googlecode.com/files/protobuf-2.4.1.tar.gz
    tar -xzvf protobuf-2.4.1.tar.gz
    pushd protobuf-2.4.1 && ./configure --prefix=/usr && make && sudo make install && popd
	protoc -I . grpc.proto --go_out=plugins=grpc:.
	