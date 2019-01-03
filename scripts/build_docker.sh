#!/usr/bin/env bash

set -ex

cd ..
sudo bash -c "echo 0 > /proc/sys/kernel/randomize_va_space"
docker build -t seelabs/cpp_dev_emacs:0.1 .
sudo bash -c "echo 2 > /proc/sys/kernel/randomize_va_space"
