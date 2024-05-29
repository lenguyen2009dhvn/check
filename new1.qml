#!/bin/bash

cd /home/lenguyen/build-webos
source oe-init-build-env
bitbake com.example.app.nativeqt

ssh root@$1 << 'EOF'
cd /media/internal/downloads/
opkg install com.example.app.nativeqt_1.0.0-r0.local0_raspberrypi4_64.ipk
EOF
