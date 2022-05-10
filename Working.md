Brief

Academic math paper - easier to read

maths - paper - extracts as strings - evaluated

output - extracts as strings - answer of sum

move to more modern - 1 or 2 terms

Terms

Term - integer or float, zero , positive or negative

Input - 
"2 + 3"

Operators - + first, then -, *, %



INPUT | OUTPUT

"2" | ["2", 2.0]

"-2" | ["-2", -2.0]

"2 + 3" | ["2 + 3", 5.0]

"1+1" | "Input must be a valid mathematical string separated by spaces"

"0" | ["0", 0.0]

"" | ["", 0.0]

"What's up, calculator!?" | MathError "What's up, calculator!?" | Error incorrect input

"5 + 5 + 5 + 5" | ArgumentError "Input must be a string"


Nice to have

other operators

"3 - 1" | ["3 - 1", 2.0]