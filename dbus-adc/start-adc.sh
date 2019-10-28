#! /bin/sh

if [ ! -e /sys/bus/iio/devices/iio:device0 ]; then
    svc -d /service/dbus-adc
    exit
fi

exec $(dirname $0)/dbus-adc --banner
