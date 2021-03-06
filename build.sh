#!/bin/sh

OLD_GOPATH=$GOPATH
export GOPATH=$(cd `dirname $0`; pwd)

# build file
cd src/keygen/app
echo 'Start build'
go install
cd ../../../
go clean

export GOPATH=$OLD_GOPATH
echo 'Finish'