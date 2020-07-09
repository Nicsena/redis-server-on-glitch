# Check for Redis Server - if exist, run - if not exist, install and run.
cd

check() {
FILE=./.local/bin/redis-server
if [ -f "$FILE" ]; then
    echo "redis-server is installed, starting server!"
    bash ./start-redis.sh
else 
    echo "redis-server could not be found, installing."
    bash ./install-redis.sh
    exit 1
fi
}

# Start
check &
node server.js