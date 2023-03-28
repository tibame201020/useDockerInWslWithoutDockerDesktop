### use script
```bash
git clone https://github.com/tibame201020/wsl_dev_env
```
```bash
cd wsl_dev_env/minikube
```

```bash
sh install.sh
```

### install steps
#### install kubectl
```bash
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
```
#### install minikube
```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

```
#### start service
```bash
minikube start --driver=docker
```
#### test
```bash
minikube status
```
