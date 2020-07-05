#!/usr/bin/env sh
mkdir ./output
crystal run src/cli.cr | jq > output/portfolio.json
