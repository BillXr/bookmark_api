#!/bin/sh

yarn &&
yarn docker compose rm dev-db -s -f -v &&
yarn docker compose up dev-db -d &&
timeout 1 &&
yarn prisma migrate deploy &&
yarn nest start --watch 