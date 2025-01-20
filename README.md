# Ada Range Check Bug

This repository demonstrates a subtle bug related to range checks in Ada. The `Check_Range` function intends to verify if an integer falls within the range of 1 to 10. However, there is an error in how the range is specified, causing unexpected results.

## Bug Description
The `Check_Range` function uses `in 1..10` to check the range.  This is incorrect and only checks if Num is equal to 1 or 10.  To check if it's between 1 and 10, inclusive, the condition should be `Num >= 1 and then Num <= 10`. 

## Bug Solution
The solution corrects the range check in the `Check_Range` function to ensure accurate verification.

## How to Reproduce
1. Compile and run the `bug.ada` file.
2. Observe the output for the given input (12).  It will show that the number is within range, demonstrating the bug. 
3. Then replace `bug.ada` with `bugSolution.ada`, compile and run. It will accurately show that the number is outside the range.
