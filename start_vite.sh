#!/bin/bash

(
	cd packages/app
	npm i
)
./activate_dep.sh 1
(
	cd packages/app
	npm run dev
)
