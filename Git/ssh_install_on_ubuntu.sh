sudo apt update -y
sudo apt install openssh-server -y
sudo apt install net-tools -y
sudo systemctl start ssh
sudo systemctl enable ssh
sudo systemctl status ssh
