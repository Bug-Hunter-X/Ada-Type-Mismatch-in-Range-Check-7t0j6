# Ada Type Mismatch in Range Check

This example demonstrates a common error in Ada programming: unexpected type mismatches in comparisons when mixing integer and floating-point types. The `Check_Range` function is designed to check if an integer falls within a specific range.  However, if a floating-point value is passed, the compiler will produce an error because of Ada's strong type system.  The solution involves careful type handling and potentially using type conversion when dealing with potentially mixed types in comparisons.

## How to Reproduce

1. Compile and run the `bug.ada` file.  You'll encounter a compilation error on the line where a floating-point value is passed to `Check_Range`.
2. Review the `bugSolution.ada` file to see a corrected approach. 