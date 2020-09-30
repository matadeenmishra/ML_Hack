#! /bin/sh

mount -o remount,rw /
mkdir -p /lib/firmware/qca
cp -rf /bt_firmware/image/* /lib/firmware/qca
rmmod hci_uart
rmmod btqca
rmmod bluetooth
insmod /usr/lib/modules/4.14.117-perf/kernel/net/bluetooth/bluetooth.ko
insmod /usr/lib/modules/4.14.117-perf/kernel/drivers/bluetooth/btqca.ko
insmod /usr/lib/modules/4.14.117-perf/kernel/drivers/bluetooth/hci_uart.ko