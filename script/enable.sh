sudo sh -c "cd ~/docker-env"
sudo groupadd docker
sudo usermod -aG docker user
sudo /lib/systemd/systemd-sysv-install enable docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo /lib/systemd/systemd-sysv-install enable docker
sudo service docker start