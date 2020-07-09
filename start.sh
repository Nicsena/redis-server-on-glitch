# Check for Redis Server - if exist, run - if not exist, install and run.
cd

check() {
FILE=./.local/bin/redis-server
if [ -f "$FILE" ]; then
    echo "redis-server is installed, starting server!"
    bash ./start-redis.sh
else 
    echo "redis-server could not be found, getting the latest install redis script from the assets repo."
    
    # Get the updated and latest version of the install script.
    wget -q https://raw.githubusercontent.com/Nicsena/redis-server-on-glitch-assets/master/install-redis.sh -O ./install-redis.sh
    chmod +x install-redts.sh
    
    echo "installing redis-server"
    bash ./install-redis.sh
    exit 1
fi
}

# Start
check &
node server.js