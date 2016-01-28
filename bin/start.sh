#!/bin/bash

ROOT=$(pwd)

componets=("api-server" "oauth2-server" "ttjinhuo.com" "adminEx" "nginx")
for componet in ${componets[@]}
do
    echo "starting ${componet} ..."
    cd ${componet}
    ./bin/start.sh
    cd ..
done
echo "all componets are running."