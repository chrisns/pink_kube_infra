#!/bin/sh

export GOPATH=$HOME/go
docker run --rm -ti -v `pwd`:/app golang bash -c ' \
go get -u github.com/cloudflare/cfssl/cmd/... ;\
cd /app ;\
cfssl gencert -initca ca.json | cfssljson -bare ca ;\
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem server.json | cfssljson -bare server ;\
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem agent.json | cfssljson -bare agent'
