#!/usr/bin/bash

CITY=$1

echo "<html><head><meta charset="UTF-8"></head><body>"

echo "<p>Время:<p>"
date
echo "<p>Температура и влажность в городе ${CITY}:</p>"
curl -s https://wttr.in/${CITY}?format=j1 | jq '.["current_condition"][0] | .temp_C, .humidity'

echo "</body></html>"
