#!/bin/bash

docker run -v $PWD:/data -it blang/latex xelatex $1
