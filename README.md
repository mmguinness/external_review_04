# external_review_04

## External Code Review by Fuchsia Tentacool 42 ##

### Brief

- Academic math paper, task is making it easier to read
- maths equations are extracted as strings and evaluated by a **new program**
- output - string that was inputted and the total sum, formatted into an array
- can pass in 1 or 2 terms to be evaluated in the string

**Terms**
- integer or float, zero , positive or negative

**Input example**
- "2 + 3"


**INPUT | OUTPUT TABLE**

"2" | ["2", 2.0]<br>

"-2" | ["-2", -2.0]<br>

"2 + 3" | ["2 + 3", 5.0]<br>

"1+1" | "Input must be a valid mathematical string separated by spaces"<br>

"0" | ["0", 0.0]<br>

"" | ["", 0.0]<br>

"What's up, calculator!?" | MathError <br>

"5 + 5 + 5 + 5" | ArgumentError <br>


**Nice to have**

- other operators
<br>
"3 - 1" | ["3 - 1", 2.0]