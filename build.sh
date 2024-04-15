#!/bin/bash -xe

function cmd_fmt() {
  go fmt ./...
}

function cmd_test() {
  go test ./...
}

cd "$(dirname "$0")"; _cmd="${1?"cmd is required"}"; shift; "cmd_${_cmd}" "$@"
