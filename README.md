# 不需要於windows安裝docker desktop
# can run docker on wsl without docker desktop
# example
https://www.youtube.com/watch?v=7r1k-hJ_mo0

# wsl_dev_env wsl ubuntu開發環境

# develop docker images
https://github.com/tibame201020/dockerImages

## step1 將wsl設定完成 config ur system

![image](https://user-images.githubusercontent.com/78014702/227117027-ec4179e2-12dc-4d59-84e9-4c738aeaa3a1.png)


## step2 執行下面的script 將會安docker、docker compose 並且於最後切換alternatives為手動(輸入1)
### Executing the following script will install Docker, and Docker Compose. At the end, it will switch alternatives to manual mode (enter 1).

```bash
sudo apt update -y
sudo apt-get update -y
sudo apt install curl -y
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
sudo apt-get update && sudo apt-get install docker-compose-plugin -y

sudo update-alternatives --config iptables

```
or
```bash
sudo apt update -y
sudo apt-get update -y
sudo apt install curl -y
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
sudo apt-get update && sudo apt-get install docker-compose-plugin -y

echo "1" | sudo update-alternatives --config iptables
echo "1" | sudo update-alternatives --config iptables
```

![image](https://user-images.githubusercontent.com/78014702/227119171-db253795-0355-4cb6-a03c-2087adf7df02.png)

## step3 啟用systemd
### active systemd
```bash
sudo -e /etc/wsl.conf
```
## step4 貼上儲存/paste ctrl+O ctrl+X

```bash
[automount]
enabled = true
mountFsTab = true
[boot]
systemd=true
command=sudo service docker start
```
## step5 退出wsl 重啟wsl 
### restart wsl
```bash
exit or logout
```
```bash
wsl.exe --shutdown
```
## step6 執行下面的script
### Executing the following script
```bash
sudo groupadd docker
sudo usermod -aG docker $USER
sudo /lib/systemd/systemd-sysv-install enable docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo /lib/systemd/systemd-sysv-install enable docker
sudo service docker start
```
## step7 測試
### test
```bash
docker run hello-world
```
![image](https://user-images.githubusercontent.com/78014702/227119127-4b5083ee-0155-4db9-9829-0532b449d13f.png)

## external 使用ip連到wsl
### use ip connect wsl (ssh/sftp)
```bash
sudo apt install openssh-server -y
sudo service ssh start
hostname -I
```

## external wsl環境
### wsl env
```bash
sudo apt install maven -y
sudo apt install git -y
sudo apt install curl -y
sudo curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install yarn -y
```


