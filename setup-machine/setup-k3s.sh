#! /bin/bash
sudo bash
mkdir ~/.kube/
cp /etc/rancher/k3s/k3s.yaml ~/.kube/
mv ~/.kube/k3s.yaml ~/.kube/config

# Start docker
systemctl daemon-reload
systemctl start docker
systemctl enable docker

cp /usr/local/bin/kubectl /bin/