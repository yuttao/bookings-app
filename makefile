GO_SRC := $(shell find . -name *.go)
source:
	echo ${GO_SRC}
	
run:
	go run cmd/web/*.go

clean:
	rm dist/*

dist/server: $(GO_SRC)
	go build -o dist/server cmd/web/*.go

serve: dist/server
	dist/server

