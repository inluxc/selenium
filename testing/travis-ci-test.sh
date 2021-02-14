#!/bin/bash
# Run tests under Travis for continuous integration.

sudo ls -la $HOME
sudo chown $USER:$USER ~/.Xauthority

go test -coverprofile=coverage.txt -covermode=atomic -test.v -timeout=20m ./...
