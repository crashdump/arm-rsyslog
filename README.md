# arm-rsyslog
Docker container with Rsyslog for ARMHF

## How To

git clone https://github.com/crashdump/arm-rsyslog.git /opt/containers/arm-rsyslog

### One time use

docker-compose up

### As a systemd service

ln -s docker-rsyslog.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable docker-rsyslog.service
sudo systemctl start docker-rsyslog.service
