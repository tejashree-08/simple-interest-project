#!/usr/bin/env bash
# simple-interest.sh
# Usage: ./simple-interest.sh PRINCIPAL RATE TIME

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 PRINCIPAL RATE TIME"
  exit 1
fi

P=$1
R=$2
T=$3

SI=$(echo "$P * $R * $T / 100" | bc -l)
TOTAL=$(echo "$P + $SI" | bc -l)

echo "Principal: $P"
echo "Rate: $R%"
echo "Time: $T years"
echo "Simple Interest: $SI"
echo "Total Amount: $TOTAL"
