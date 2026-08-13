.PHONY: test race bench lint verify

test:
	go test ./...

race:
	go test -race ./...

bench:
	go test -bench=. -benchmem ./algorithms/engineering/...

lint:
	golangci-lint run

verify: test race lint
