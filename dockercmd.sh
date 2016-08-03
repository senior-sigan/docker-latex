#!/bin/sh
exec docker run --rm -i --net=none -v $PWD:/data sigan/latex:pscyr "$@"
