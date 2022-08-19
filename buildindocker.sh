#!/bin/bash
set -e
docker build -f docker/builder.Dockerfile -t dummy/builder .
docker run --rm \
  -v "$(pwd):/code" \
  -w /code dummy/builder nimble webr