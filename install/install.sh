

# requirements

# dumb-init
apt-get update
apt-get install -y --no-install-recommends wget
wget --no-check-certificate https://github.com/Yelp/dumb-init/releases/download/v1.0.1/dumb-init_1.0.1_amd64.deb
dpkg -i dumb-init_1.0.1_amd64.deb && rm dumb-init_1.0.1_amd64.deb
# Grafana
cd /opt
GRAFANA=grafana-4.0.2-1481203731
wget --no-check-certificate https://grafanarel.s3.amazonaws.com/builds/${GRAFANA}.linux-x64.tar.gz
tar zxvf ${GRAFANA}.linux-x64.tar.gz
rm ${GRAFANA}.linux-x64.tar.gz
ln -s ${GRAFANA} grafana

