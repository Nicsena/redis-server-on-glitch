# From your project directory
cd 
mkdir .local
cd .local
mkdir bin

# Installation
cd bin

# Installation - May do a zip file with the three files.
wget https://github.com/Nicsena/redis-server-on-glitch-assets/raw/master/redis-cli
wget https://github.com/Nicsena/redis-server-on-glitch-assets/raw/master/redis-server
wget https://raw.githubusercontent.com/Nicsena/redis-server-on-glitch-assets/master/redis.conf

# Installation - Make Redis Binaries Executable
chmod +x redis-cli
chmod +x redis-server

# Redis Database Path
cd
mkdir redis
cd redis
mkdir database

# Redis Configuration
cd
cat > /app/.redis <<- EOM
mkdir /app/.data
dir /app/.data
appendonly yes
daemonize yes
EOM

# Start Server
cd
./start-redis.sh
