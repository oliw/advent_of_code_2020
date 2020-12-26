# Advent of Code 2020

This repository contains my solutions to the 2020 Advent of Code puzzles.

Advent of Code is a series of 25 questions (each with two parts) released one per day in the run up to Christmas Day. Participants are given unique puzzle inputs which means its hard to copy! Some people choose to do it competitively as a race, some choose to use a programming language they are unfamiliar with. I chose neither, and capitalized on my existing Ruby skillset, and just tried to complete each question on the day it was released.

If I were to self critique I'd say my solutions *are* correct, and pretty concise thanks to my healthy grasp of the available methods on Ruby's Array and Hash classes. The questions on the two Sundays (intentional I'm sure) were the most time consuming. 

You'll note, I was optimizing for "time until solution" and not "cleanliness" :)  

## Question 1: Summing Numbers
Themes: Sorting, Arrays

### Part 1
Prompt: For a given list of numbers, find two that add up to 2020.
Solution: Sort the list, then do an exhaustive pairwise analysis.

### Part 2
Prompt: For a given list of numbers, find three that add up to 2020.
Solution: Sort the list, take a number out, see if there are two numbers in the remaining list such that all three add to 2020.

## Question 2: Validating Passports
Themes: Validation, Regex

### Part 1
Prompt: Count occurences of a letter in a password, and check if its within the acceptable range
Solution: Trivial once you've got a good Regex to describe the puzzle input

### Part 2: 
Prompt: Ensure only one of the provided positions contains the provided letter
Solution: Trivial once you've got a good Regex to describe the puzzle input

## Question 3: Bobsledding down a 2D Array
Themes: 2D Array Traversal with Wrapping

### Part 1
Prompt: Count the number of # seen in a 2D Array if you traverse in certain direction
Solution: Trivial once you've mapped the input into a 2D Array.

### Part 2
Prompt: Count the number of # seen in a 2D Array if you traverse in several directions
Solution: Trivial if your method for Part 1 accepts arbitrary directions as an input

## Question 4: Validating Passports
Themes: Validation, Hash, Regex, Lambdas

### Part 1
Prompt: Count the passports that have all required fields
Solution: For each passport, have a "Seen" Hash, that defaults to false for all the required fields. Process the line, and then count how many values in the Seen Hash are True.

### Part 2
Prompt: Validate all the field entries according to custom validation rules per field type.
Solution: Store the validation rules in a Hash of Lambas that maps the field type to a lambda that takes the raw value and returns true if its valid.

## Question 5: Find your Seat on the Plane
Themes: Regex, Binary Partitioning, Recursion

### Part 1
Prompt: Find the biggest seat number on the plane
Solution: Divide each input into column instructions and row instructions. Define helper method that recursively narrows the range until you get to the right number.

### Part 2
Prompt: Find your seat number
Solution: This one, I eyeballed. I stored all the seat seat numbers in a Hash, then sorted the seen seat numbers, then printed to Std Out and chose the only one that wasnt near the front or end of the plane.

## Question 6: Passing Through Customs 
Themes: String Manipulation (gsub), Hash

### Part 1
Prompt: Find the number of question types answered by each group
Solution: Split input into groups, flatten each group into a single line, count the uniq characters in each line.

### Part 2
Prompt: Count the number of questions types answered by EVERY member of the group
Solution: Use a Seen Hash mapping the question type to an array of people that have answered it. Fill the Seen hash, count the hash entries where the value length equals the group size.

## Question 7: Bags containing Bags
Themes: Regex, Hash, Recursion

### Part 1
Prompt: How many bag colors can eventually contain at least one shiny gold bag?
Solution: Build a regex that parses the rules for each bag and its parents. Build a hash mapping a bag to a list of all its parent bags. Recursively build a list of bags and the bags that can contain them. Make the final list flat and unique.

### Part 2
Prompt: How many individual bags are required inside your single shiny gold bag?
Solution: Do the opposite Hash, build a Hash that maps a bag to all its children. 

## Question 8: Handheld Halting
Themes: Regex, Struct

### Part 1
Prompt: Process the instructions and find out the value of the global variable.
Solution: Convert the input into a list of Structured Instructions containing a command and a value. Process each instruction in turn.

### Part 2
Prompt: What is the value of the accumulator after the program terminates, if you remove the buggy instruction?
Solution: Write a contains loop helper method; then exhaustively try all the instruction lists swapping Nops for Jmps or vice versa.
