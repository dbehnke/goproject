#!/bin/bash

export OLDGOPATH=$GOPATH
export GOPATH=$PWD/go
export OLDPATH=$PATH
export PATH=$PWD/go/bin:$PATH
export OLDPS1=$PS1
export PS1="(${PWD##*/}) $PS1"

deactivate() {
    export PATH=$OLDPATH
    export GOPATH=$OLDGOPATH
    export PS1=$OLDPS1
    unset OLDGOPATH
    unset OLDPATH
    unset OLDPS1
    unset -f deactivate
}

if [ ! -d "go" ]; then
    mkdir go
    mkdir go/bin
fi


