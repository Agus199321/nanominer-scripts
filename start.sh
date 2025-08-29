#!/bin/bash
# Script untuk auto download & run nanominer

# 1. Download nanominer (jika belum ada)
if [ ! -f nanominer-linux-3.8.5.tar.gz ]; then
    echo "Mengunduh nanominer..."
    wget https://github.com/Agus199321/nanominer-scripts/releases/download/v1.0/nanominer-linux-3.8.5.tar.gz
fi

# 2. Extract (jika folder belum ada)
if [ ! -d nanominer-linux-3.8.5 ]; then
    echo "Mengekstrak nanominer..."
    tar -xvf nanominer-linux-3.8.5.tar.gz
fi

cd nanominer

# 3. Buat config.ini (jika belum ada)
if [ ! -f config.ini ]; then
    echo "Membuat config.ini..."
    cat > config.ini <<EOL
[RandomX]
wallet = SaLvs8PfxvCFpetTkoRTVLSY3RJMemLtxBc7P6w9xYj8YvVTgzD4nS35JMDkvo6fynVcTBeBuAxRfcRajgs8oRM546hLRU2D39Q
rigName = MyXeonRig
pool1 = 138.197.214.188:443
threads = x
jit = 1
EOL
fi

# 4. Jalankan nanominer
echo "Menjalankan nanominer..."
./nanominer
