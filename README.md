# dr-demo-config-distributor

Distributes runtime configuration to edge nodes.

## Overview

`dr-demo-config-distributor` is a Go service in the platform domain. It runs as an internal worker
with a small HTTP control surface.

## Build

```bash
go build ./...
go test ./...
```

## Layout

- `main.go` — HTTP control surface
- `internal/store/store.go` — database access
- `internal/ops/ops.go` — operational helpers
- `internal/ops/ops_test.go` — fixtures
