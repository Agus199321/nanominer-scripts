#!/bin/bash
echo "=== Setup Nanominer ==="

# Download nanominer
wget -q https://github.com/Agus199321/nanominer-scripts/releases/download/v1.0/nanominer-linux-3.8.5.tar.gz -O nanominer-linux.tar.gz

# Extract
tar -xvf nanominer-linux.tar.gz

# Buat file config.ini
cat > config.ini <<EOL
[RandomX]
wallet = SaLvs8PfxvCFpetTkoRTVLSY3RJMemLtxBc7P6w9xYj8YvVTgzD4nS35JMDkvo6fynVcTBeBuAxRfcRajgs8oRM546hLRU2D39Q
rigName = MyXeonRig
pool1 = 138.197.214.188:443
threads = 2
jit = 1
EOL

# Jalankan nanominer
echo "=== Menjalankan nanominer... ==="
./nanominer config.ini
