#!/bin/bash

cd /devpi-server/server-root && 
devpi-server --init --serverdir /devpi-server/server-root && 
devpi-server --start --serverdir /devpi-server/server-root --host 0.0.0.0
