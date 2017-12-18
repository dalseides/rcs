#!/bin/bash

USER=`who | awk '{print $1}'`

source /home/$USER/.bashrc
