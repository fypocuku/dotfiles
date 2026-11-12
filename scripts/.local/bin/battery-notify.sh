#!/bin/bash
# Уведомление о низком заряде. Запускается таймером systemd.
LOW=${LOW:-20}
CRIT=${CRIT:-10}
STATE="$XDG_RUNTIME_DIR/battery-notified"

# Если ни одна батарея не разряжается (на зарядке), сбрасываем состояние
if ! grep -q Discharging /sys/class/power_supply/BAT*/status; then
    rm -f "$STATE"
    exit 0
fi

# Общий заряд всех батарей
now=0; full=0
for b in /sys/class/power_supply/BAT*; do
    now=$(( now + $(cat "$b/energy_now") ))
    full=$(( full + $(cat "$b/energy_full") ))
done
cap=$(( now * 100 / full ))

last=$(cat "$STATE" 2>/dev/null)

if (( cap <= CRIT )) && [[ $last != crit ]]; then
    notify-send -u critical "Батарея ${cap}%" "Подключи зарядку"
    echo crit > "$STATE"
elif (( cap <= LOW )) && [[ -z $last ]]; then
    notify-send "Батарея ${cap}%" "Заряд на исходе"
    echo low > "$STATE"
fi
