#!/bin/bash
source test_cases.sh

# Define the Python functions in strings
student_function='
from sandbox.student import get_mean as get_mean_student
'

author_function='
from sandbox.author import get_mean as get_mean_author
'

# Loop through each test case
for case_value in "${test_cases[@]}"; do
    # Call the Python function with the test case
    student_result=$(python3 -c "
$student_function
try:
    result = get_mean_student($case_value)
    print(f'Mean of {case_value} is {result} (student)')
except Exception as student_exception:
    print(f'Error occurred: {student_exception.__class__.__name__}'")

    author_result=$(python3 -c "
$author_function
try:
    result = get_mean_author($case_value)
    print(f'Mean of {case_value} is {result} (author)')
except Exception as author_exception:
    print(f'Error occurred: {author_exception.__class__.__name__}'")

    # Compare the results
    if [ "$student_result" == "$author_result" ]; then
        echo "Test case for $case_value passed"
    else
        echo "Test case for $case_value failed"
    fi
done