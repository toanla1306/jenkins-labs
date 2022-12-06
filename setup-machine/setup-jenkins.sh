#! /bin/bash
# Start docker
systemctl daemon-reload
systemctl start docker
systemctl enable docker