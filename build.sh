#!/bin/bash

docker build -t amazyra/deploy-firebase .
docker run -v hoge -t amazyra/deploy-firebase