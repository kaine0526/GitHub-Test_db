#!/bin/bash

service mariadb start
service nginx start
tail -f /dev/null
