# Level 11: Automated Disk Space Report






directory="$1"


usage=$(df "$directory" | awk 'NR==2 {print $5}' | sed 's/%//')


if [ "$usage" -gt 80 ]; then
  echo "Warning: $directory usage is $usage%."
else
  echo "$directory usage is $usage%."
fi