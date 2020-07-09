# Start Updating Process
echo "Started Update Process - This may take a while to do."
cd


# REMOVE THIS IF YOU HAVE YOUR OWN README.MD FILE, OR ELSE, THE UPDATER WILL OVERWRITE YOUR OWN README.MD.
wget -q https://raw.githubusercontent.com/Nicsena/redis-server-on-glitch-assets/master/files/README.md -o README.md


# Go to the bin path inside .local to do updating of redis files.
cd .local
cd bin

# Stop Redis Server for update
killall redis-server
echo "Stopped Redis Server For Update"

# Update Files
wget -q https://github.com/Nicsena/redis-server-on-glitch-assets/raw/master/redis-cli -O redis-cli
wget -q https://github.com/Nicsena/redis-server-on-glitch-assets/raw/master/redis-server -O redis-server
wget -q https://raw.githubusercontent.com/Nicsena/redis-server-on-glitch-assets/master/redis.conf -O redis.conf # Anything can change in the conf file if you run this script.

# Update Files - Make Redis Binaries Executable
echo "Update is 50% Completed"
chmod +x redis-cli
chmod +x redis-server

# Update Files  - Get Latest Versions of the scripts
cd
wget -q https://raw.githubusercontent.com/Nicsena/redis-server-on-glitch-assets/master/files/install-redis.sh -O install-redis.sh
wget -q https://raw.githubusercontent.com/Nicsena/redis-server-on-glitch-assets/master/files/start-redis.sh -O start-redis.sh
echo "Update is 75% Completed."
chmod +x start-redis.sh
chmod +x install-redis.sh

# Update Files - Redis Configuration
wget -q https://raw.githubusercontent.com/Nicsena/redis-server-on-glitch-assets/master/files/.redis -O .redis # Anything can change in the redis configuration file.
echo "Update is 85% Completed."

# Update Files - Get Latest Version of the Update Script - Project will refresh shortly after
cd /tmp/

# Delete previous update.sh if exists
rm -rf update.sh

wget -q https://raw.githubusercontent.com/Nicsena/redis-server-on-glitch-assets/master/files/update.sh -O update.sh
chmod +x update.sh
bash /tmp/update.sh &
exit 1
