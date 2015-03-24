#!/bin/bash

top -p $(pgrep -d ',' "fleet|etcd|systemd")
