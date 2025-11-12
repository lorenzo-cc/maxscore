#!/usr/bin/env bash
# maxscore.sh

# Read 5 positive integers and store in an array
scores=()
count=0
while (( count < 5 )); do
  read -r -p "Enter positive integer #$((count+1)): " val
  # Validate positive integer (no leading +/-, no decimals)
  if [[ "$val" =~ ^[0-9]+$ ]] && (( val > 0 )); then
    scores+=( "$val" )
    ((count++))
  else
    echo "Please enter a positive integer."
  fi
done

# Find the highest score
max="${scores[0]}"
for v in "${scores[@]}"; do
  if (( v > max )); then
    max="$v"
  fi
done

# Display the highest score
echo "Highest score: $max"

# Display all scores and their difference from the biggest number
echo "Scores and differences from max:"
for v in "${scores[@]}"; do
  diff=$(( max - v ))
  echo "Score: $v, Difference: $diff"
done

