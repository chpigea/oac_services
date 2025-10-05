## Create the file service

In "/etc/systemd/system" ceate the *.service files.

For example using "nano":

> sudo nano /etc/systemd/system/oac_gateway.service

> sudo nano /etc/systemd/system/oac_register.service

> sudo nano /etc/systemd/system/oac_backend.service

> sudo nano /etc/systemd/system/oac_frontend.service

> sudo nano /etc/systemd/system/oac_target.service

## Enable the services
> sudo systemctl daemon-reload
> sudo systemctl enable oac_target

## Examples:

### Start the service
> sudo systemctl start oac_target

### Stop the service
> sudo systemctl stop oac_target

### Get status of the service
> sudo systemctl status oac_target

### Get the log in real-time
> sudo journalctl -u oac_backend oac_register oac_gateway oac_frontend -f


