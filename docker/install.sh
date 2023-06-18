sudo apt update
sudo apt install -y curl
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker user
sudo apt-get update && sudo apt-get install -y docker-compose-plugin

echo "1" | sudo update-alternatives --config iptables
echo "1" | sudo update-alternatives --config iptables

sudo sh -c "echo '[automount]' > /etc/wsl.conf"
sudo sh -c "echo 'enabled = true' >> /etc/wsl.conf"
sudo sh -c "echo 'mountFsTab = true' >> /etc/wsl.conf"
sudo sh -c "echo '[boot]' >> /etc/wsl.conf"
sudo sh -c "echo 'systemd=true' >> /etc/wsl.conf"
sudo sh -c "echo 'command=sudo systemctl start docker' >> /etc/wsl.conf"
