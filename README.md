# README for Username Validation Script

## Author Information
- **Name:** Lorenzo Cocchi
- **Course:** 231-01 Intro to *nix
- **Assignment:** Maxscore Assignment
- **Date:** November 11, 2025

## Program Description
The program asks the user for five positive integers and prints the max number. Then, it compares the 5 numbers to the max number and prints the difference between the two.

## Usage
To run the script interactively:
```bash
./maxscore.sh
```

To test with the provided input file:
```bash
./maxscore.sh < maxscore-input
```

## How the Script Works
- I read the numbers using a while loop and a condition to satisfy until 5 numbers have been read using "read -r -p". The numbers are validated then input into the scores array.
- The array is looped through each iteration by using a for loop, and the max number is checked if the iteration "v" is bigger, the max value is set to that.
- I calculated the difference by using another for loop and simply subtracting the max score by each iteration. In the loop, the score and difference is printed.

## Testing Results
*Input:*
5
3
9
10
15

*Output*
Highest score: 15
Scores and differences from highest:
Score: 5, Difference: 10
Score: 3, Difference: 12
Score: 9, Difference: 6
Score: 10, Difference: 5
Score: 15, Difference: 0



## Challenges and Solutions

## Resources
Class Slides
Google for array syntax

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
