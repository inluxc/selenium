#!/bin/bash
# Run tests under Travis for continuous integration.

ln -s "$XAUTHORITY" ~/.Xauthority

go test -coverprofile=coverage.txt -covermode=atomic -test.v -timeout=20m ./...
