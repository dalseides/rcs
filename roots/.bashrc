#!/bin/bash

USER=`who | awk 'END {print $1}'`

source /home/$USER/.bashrc
