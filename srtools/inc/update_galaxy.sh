#!/bin/bash

IP=$(ip a | grep inet | grep /24 | awk '{print $2}' | cut -d "/" -f 1)

<<<<<<< HEAD
logger SRTools: "Updating Galaxy IP address to $IP..."
sudo mysql -e "use swgemu; update galaxy set address='$IP' where galaxy_id='2';"
logger SRTools: "Updating Galaxy name to $core3_galaxy_name..."
sudo mysql -e "use swgemu; update galaxy set name='$core3_galaxy_name' where galaxy_id='2';"
=======
sudo mysql -e "use swgemu; update galaxy set address='$IP' where galaxy_id='2';"
>>>>>>> 145ac543f99e099789376555e7d015732dbd2c5f
