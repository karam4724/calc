#!/bin/bash

# Simple Interest Calculator

echo "======================================="
echo "      Simple Interest Calculator       "
echo "======================================="

# Get inputs from the user
read -p "Enter Principal Amount ($): " principal
read -p "Enter Annual Rate of Interest (%): " rate
read -p "Enter Time Period (in years): " time

# Perform the calculation using 'bc' for floating-point math
# Formula: SI = (P * R * T) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)

# Display the result
echo "---------------------------------------"
echo "Calculated Simple Interest: \$$interest"
echo "======================================="
