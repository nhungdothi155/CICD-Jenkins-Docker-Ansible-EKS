#!/bin/bash
sudo apt update -y
sudo snap install kubectl --classic
kubectl version --output=yaml