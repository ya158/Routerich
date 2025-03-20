#!/bin/sh

touch /etc/led_off.sh & chmod +x /etc/led_off.sh
echo 'sleep 20'>/etc/led_off.sh
echo 'echo none >> /sys/class/leds/blue:power/trigger'>>/etc/led_off.sh
echo 'echo 0    >> /sys/class/leds/blue:power/brightness'>>/etc/led_off.sh
echo 'sleep 150'>>/etc/led_off.sh
echo 'echo none | tee /sys/class/leds/blue:lan-1/trigger /sys/class/leds/blue:lan-2/trigger /sys/class/leds/blue:lan-3/trigger /sys/class/leds/blue:wan/trigger /sys/class/leds/blue:wlan-24/trigger /sys/class/leds/red:wlan-50/trigger /sys/class/leds/blue:power/trigger >> /dev/null'>>/etc/led_off.sh
echo 'echo 0 >> /sys/class/leds/blue:lan-1/brightness'>>/etc/led_off.sh
echo 'echo 0 >> /sys/class/leds/blue:lan-2/brightness'>>/etc/led_off.sh
echo 'echo 0 >> /sys/class/leds/blue:lan-3/brightness'>>/etc/led_off.sh
sed -i '$i /etc/led_off.sh &' /etc/rc.local
