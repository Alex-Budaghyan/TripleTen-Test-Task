#!/bin/bash

# Define the test cases
test_cases=(
    "[]"                                       # Empty list
    "[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]"           # List of zeros
    "[1]"                                      # Single element list
    "[1000, 500, 250, 125, 62.5]"              # Halving numbers
    "[2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]" # Powers of 2
    "[0.1, 0.01, 0.001, 0.0001, 0.00001]"      # Decreasing decimal values
    "[0.5, 1.5, 2.5, 3.5, 4.5, 5.5, 6.5]"      # Incremental decimal values
    "['a']"                                    # Single element string list
    "['a', 'b', 'c', 'd', 'e']"                # Alphabet characters
    "['apple', 'banana', 'cherry', 'date', 'elderberry']" # Fruits in alphabetical order
    "[1, 3, 5, 7, 9, 11, 13, 15, 17, 19]"      # Odd numbers
    "[2, 4, 6, 8, 10, 12, 14, 16, 18, 20]"     # Even numbers
    "[1, 1, 1, 1, 1, 1, 1, 1, 1, 1]"           # List of ones
    "[1, 'one', 'two', 'three', 'four', 'five']" # Number words
    "[True, True, True, True, True]"           # List of True
    "[False, False, False, False, False]"      # List of False
    "[1, 2, 5, 10]"                             # Irregular sequence
    "['1', '2', 3, 4, 5]"                       # Mixed data types
    "[10, 20, 30, 40]"                          # Consecutive numbers
    "[1+2, 4, 5]"                               # Expression in list
)
