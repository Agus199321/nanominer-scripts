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

cd nanominer-linux-3.8.5

# 3. Buat config.ini (jika belum ada)
if [ ! -f config.ini ]; then
    echo "Membuat config.ini..."
    cat > config.ini <<EOL
[RandomX]
wallet = 16meX2eiPWFAAU94fRF8u2DejfpQaV21a8bqYQviMDaSKfwuCgQJNAEauk9PTnx3jmKkTVuLXrgcbmXtAvtVUvn6K3BpkDEFRRvSYpYcgh3
rigName = MyXeonRig
pool1 = sg-tarirx.luckypool.io:9118
threads = 2
jit = 1
EOL
fi

# 4. Jalankan nanominer
echo "Menjalankan nanominer..."
./nanominer
