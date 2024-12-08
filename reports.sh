#!/bin/bash

# Produce md and html reports in reports directory
for type in html md
do
    for report in `netlab show reports --format yaml $type | yq -r .[][].name` 
    do 
        netlab report $report reports/$type/$report
    done
done
