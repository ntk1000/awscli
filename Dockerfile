FROM gliderlabs/alpine:latest
MAINTAINER ntk1000

RUN apk add --no-cache python \
	py-pip && \
	pip install awscli

