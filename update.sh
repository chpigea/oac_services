!/bin/bash

# Stop all services
sudo systemctl stop oac_frontend
sudo systemctl stop oac_backend
sudo systemctl stop oac_gateway
sudo systemctl stop oac_register

#Update all services
npm install -g @igea/oac_frontend
npm install -g @igea/oac_backend
npm install -g @igea/oac_gateway
npm install -g @igea/oac_register
npm install -g @igea/oac_database
oac_database

#Start all services
sudo systemctl start oac_register
sudo systemctl start oac_backend
sudo systemctl start oac_gateway
sudo systemctl start oac_frontend
