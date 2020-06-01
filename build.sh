#!/bin/bash

cd ./catalog
now=$(date)
echo "Script executed from: ${PWD} at $now"
nohup gradle clean build &
wait $!
now=$(date)
echo "Script finished at $now"

cd ../pricing
now=$(date)
echo "Script executed from: ${PWD} at $now"
nohup gradle clean build &
wait $!
now=$(date)
echo "Script finished at $now"

cd ../api
now=$(date)
echo "Script executed from: ${PWD} at $now"
nohup gradle clean build &
wait $!
now=$(date)
echo "Script finished at $now"

cd ../registry
now=$(date)
echo "Script executed from: ${PWD} at $now"
nohup gradle clean build &
wait $!
now=$(date)
echo "Script finished at $now"
