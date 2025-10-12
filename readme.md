## Install NODE 22
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install 22
nvm use 22
```

## Install Postgres
```
sudo apt install -y postgresql postgresql-contrib
```

### Check status of the database
```
sudo systemctl status postgresql
```

### Enable the service (is not active)
```
sudo systemctl enable --now postgresql
```

### Access the postgres user
```
sudo -i -u postgres

psql

CREATE USER oac WITH ENCRYPTED PASSWORD '@oac#';
CREATE DATABASE oac;
GRANT ALL PRIVILEGES ON DATABASE oac TO oac;
CREATE USER oac WITH ENCRYPTED PASSWORD '@oac#';

\password postgres
```

Change the password (eg @postgres#)

## Install XSLT library
```
sudo apt install xsltproc
```

## Install ngnix
```
sudo apt install nginx -y
```

## Create the file service

In "/etc/systemd/system" ceate the *.service files.

For example using "nano":

```
sudo nano /etc/systemd/system/oac_gateway.service

sudo nano /etc/systemd/system/oac_register.service

sudo nano /etc/systemd/system/oac_backend.service

sudo nano /etc/systemd/system/oac_frontend.service

sudo nano /etc/systemd/system/oac_target.target
```

## Enable the services
```
sudo systemctl daemon-reload
sudo systemctl enable oac_target
```

## Examples:

### Start the service
```
sudo systemctl start oac_target
```

### Stop the service
```
sudo systemctl stop oac_target
```

### Get status of the service
```
sudo systemctl status oac_target
```

### Get list dependencies
```
sudo systemctl list-dependencies oac_target.target
```

### Get the log in real-time
```
sudo journalctl -u oac_backend oac_register oac_gateway oac_frontend -f
```


