#!/bin/bash

function usage() {
  echo "Usage: $0 <command>"
  echo "Commands:"
  echo "  build   - Build project and generate artifacts"
  echo "  clean   - Remove build artifacts"
  echo "  help    - Display this help message"
}

function build() {
  clean

  mkdir ./dist
  (cd ./model && m4 -P _.sysml > ../dist/FlashlightSpecAndDesign.sysml)
}

function clean() {
  rm -rf ./dist
}

if [ $# -eq 0 ]; then
  usage
  exit 1
fi

command=$1
shift

case "$command" in
  build)
    build
    ;;
  clean)
    clean
    ;;
  help)
    usage
    ;;
  *)
    echo "Error: Invalid command: $command"
    usage
    exit 1
    ;;
esac