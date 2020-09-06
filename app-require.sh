#!/bin/bash

if ! command -v dialog &> /dev/null
then
    echo "dialog could not be found"
    sudo apt-get install dialog
    exit
fi

if ! command -v curl &> /dev/null
then
    echo "curl could not be found"
    sudo apt-get install curl
    exit
fi
