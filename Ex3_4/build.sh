#!/bin/bash

docker build -t ex3_3 .

docker push ex_3_3

docker-compose up -d
