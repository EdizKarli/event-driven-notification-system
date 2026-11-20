.PHONY: build test test-race run-api run-worker lint up down logs

build:
	go build -o bin/ ./...

test:
	go test ./...

test-race:
	go test -race ./...

run-api:
	go run ./cmd/api

run-worker:
	go run ./cmd/worker

lint:
	golangci-lint run ./...

up:
	docker compose up -d --build

down:
	docker compose down

logs:
	docker compose logs -f
