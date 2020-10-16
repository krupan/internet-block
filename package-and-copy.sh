#!/bin/sh
git archive --format=tar.gz --prefix=internet-block/ HEAD > internet-block.tar.gz
rsync -a internet-block.tar.gz pi@10.20.30.5:
ssh pi@10.20.30.5 mv -i internet-block internet-block.$(date --iso-8601=seconds)
ssh pi@10.20.30.5 tar xvf internet-block.tar.gz
