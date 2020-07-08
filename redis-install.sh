# Start download and build redis.
cd
wget http://download.redis.io/redis-stable.tar.gz
tar -xvzf redis-stable.tar.gz
cd redis-stable
make

# From your project directory
cd 
mkdir .local
cd .local
mkdir bin

# Installation and clean up
cd
cd redis-stable
cp src/redis-cli ../.local/bin
cp src/redis-server ../.local/bin
cd
rm -rf redis-stable*

# Configuration
cat > /app/.redis <<- EOM
mkdir /app/.data
dir /app/.data
appendonly yes
daemonize yes
EOM
