@echo off

REM Tentukan URL repo GitHub nanominer
SET GITHUB_REPO_URL=https://github.com/Agus199321/nanominer.git
SET MINER_DIR=nanominer

REM Cek apakah repo sudah ada
IF NOT EXIST "%MINER_DIR%" (
    echo Menyalin repository dari GitHub...
    git clone %GITHUB_REPO_URL%
) ELSE (
    echo Repository sudah ada, melanjutkan...
)

REM Masuk ke folder nanominer
cd %MINER_DIR%

REM Menjalankan miner
echo Memulai Nanominer...
.\nanominer.exe -algo RandomX -wallet SaLvs8PfxvCFpetTkoRTVLSY3RJMemLtxBc7P6w9xYj8YvVTgzD4nS35JMDkvo6fynVcTBeBuAxRfcRajgs8oRM546hLRU2D39Q -rigName MyXeonRig -pool 138.197.214.188:443 -threads x -jit 1

echo Miner dimulai!
