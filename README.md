# Advent of Code 2020 Recap

This repository contains my solutions to the 2020 Advent of Code puzzles.

Advent of Code is a series of 25 questions (each with two parts) released one per day in the run up to Christmas Day. Participants are given unique puzzle inputs which means its hard to copy! Some people choose to do it competitively as a race, some choose to use a programming language they are unfamiliar with. I chose neither, and capitalized on my existing Ruby skillset, and just tried to complete each question on the day it was released.

If I were to self critique I'd say my solutions *are* correct, and pretty concise thanks to my healthy grasp of the available methods on Ruby's Array and Hash classes. The questions on the two Sundays (intentional I'm sure) were the most time consuming. 

Note: I was optimizing for "time until solution" and not "cleanliness" :)  

## Question 1: Report Repair
Themes: Sorting, Arrays

### Part 1
Prompt: For a given list of numbers, find two that add up to 2020.
Solution: Sort the list, then do an exhaustive pairwise analysis.

### Part 2
Prompt: For a given list of numbers, find three that add up to 2020.
Solution: Sort the list, take a number out, see if there are two numbers in the remaining list such that all three add to 2020.

## Question 2: Password Philosophy
Themes: Validation, Regex

### Part 1
Prompt: Count occurences of a letter in a password, and check if its within the acceptable range
Solution: Trivial once you've got a good Regex to describe the puzzle input

### Part 2: 
Prompt: Ensure only one of the provided positions contains the provided letter
Solution: Trivial once you've got a good Regex to describe the puzzle input

## Question 3: Toboggan Trajectory
Themes: 2D Array Traversal with Wrapping

### Part 1
Prompt: Count the number of # seen in a 2D Array if you traverse in certain direction
Solution: Trivial once you've mapped the input into a 2D Array.

### Part 2
Prompt: Count the number of # seen in a 2D Array if you traverse in several directions
Solution: Trivial if your method for Part 1 accepts arbitrary directions as an input

## Question 4: Passport Processing
Themes: Validation, Hash, Regex, Lambdas

### Part 1
Prompt: Count the passports that have all required fields
Solution: For each passport, have a "Seen" Hash, that defaults to false for all the required fields. Process the line, and then count how many values in the Seen Hash are True.

### Part 2
Prompt: Validate all the field entries according to custom validation rules per field type.
Solution: Store the validation rules in a Hash of Lambas that maps the field type to a lambda that takes the raw value and returns true if its valid.

## Question 5: Binary Boarding
Themes: Regex, Binary Partitioning, Recursion

### Part 1
Prompt: Find the biggest seat number on the plane
Solution: Divide each input into column instructions and row instructions. Define helper method that recursively narrows the range until you get to the right number.

### Part 2
Prompt: Find your seat number
Solution: This one, I eyeballed. I stored all the seat seat numbers in a Hash, then sorted the seen seat numbers, then printed to Std Out and chose the only one that wasnt near the front or end of the plane.

## Question 6: Custom Customs
Themes: String Manipulation (gsub), Hash

### Part 1
Prompt: Find the number of question types answered by each group
Solution: Split input into groups, flatten each group into a single line, count the uniq characters in each line.

### Part 2
Prompt: Count the number of questions types answered by EVERY member of the group
Solution: Use a Seen Hash mapping the question type to an array of people that have answered it. Fill the Seen hash, count the hash entries where the value length equals the group size.

## Question 7: Handy Haversacks
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

## Question 9: Encoding Error
Themes: Arrays, Combinations

### Part 1
Prompt: Find the first number in a sequence that is not the sum of two of the 25 numbers before it.
Solution: Leverage `list.combinations(2).to_a`, take advantage of an ever increasing list, maintain a Hash mapping previous sums but drop out sums that are now too much in the past.

### Part 2
Prompt: find a contiguous set of at least two numbers in your list which sum to the invalid number from step 1.
Solution: Again take advantage of an ever increasing list. Maintain a pointer at the start and end, and increase the start and end pointers based on how far over or under you are from the target number. `O(n)`

## Question 10: Adapter Array
Themes: Memoization, Dynamic Programming

### Part 1
Prompt: Find a chain that uses all of your adapters to connect the charging outlet to your device's built-in adapter.
Solution: Sort the Adapters, then combine; counting the differences between curr and next. 

### Part 2
Prompt: What is the total number of distinct ways you can arrange the adapters to connect the charging outlet to your device?
Solution: This is a classic dynamic programming problem (search for the Stair Climbing Dynamic Programming Problem)

## Question 11: Seating System
Themes: Moving around a 2D Array, Cloning, Conways Game of Life

### Part 1
Prompt: How many seats end up occupied?
Solution: Write helper methods like #get_neighbors, and #can_be_occupied. Make sure to clone the 2D Array and add your updates the cloned 2D array.

### Part 2
Prompt: How many seats end up occupied with the updated rules?
Solution: Write another helper method #occupied_seat_seen_in_direction(map, r, c, direction="N")

## Question 12: Rain Risk
Themes: Parsing Instructions, Rotation around an Axis

### Part 1
Prompt: What is the Manhattan distance between that location and the ship's starting position?
Solution: Very similar to Question 8. 

### Part 2
Prompt: What is the Manhattan distance between that location and the ship's starting position with the updated rules?
Solution: Write a helper method #rotate_clockwise_90(x,y)

## Question 13: Shuttle Search
Themes: Math, Chinese Remainder Theorem

### Part 1
Prompt: What is the ID of the earliest bus you can take to the airport multiplied by the number of minutes you'll need to wait for that bus?
Solution: Find the smallest multiple of each bus ID thats just over your arrival time and pick the smallest.

### Part 2
Prompt: What is the earliest timestamp such that all of the listed bus IDs depart at offsets matching their positions in the list?
Solution: *TODO Write proper explanation*

## Question 14: Docking Data
Themes: Regex, Bit minipulation, Converting numbers from/to base 10

### Part 1
Prompt: What is the sum of all values left in memory after it completes?
Solution: Write helper methods that convert numbers from one base to another.

### Part 2
Prompt: What is the sum of all values left in memory after it completes?
Solution: Leverage `["0","1"].repeated_permutation(2).to_a` to come up with all the possible mutations.

## Question 15: Rambunctious Recitation
Themes: Hash

### Part 1
Prompt: what will be the 2020th number spoken?
Solution: Keep a hash of the two last seen locations each number

### Part 2
Prompt: what will be the 2020th number spoken?
Solution: Same as Part 1

## Question 16: Ticket Translation
Themes: Regex, Sudoku Solving

### Part 1
Prompt: What is your ticket scanning error rate
Solution: Convert the raw input into rules, flag the entries where none of the rules match.

### Part 2
Prompt: Once you work out which field is which, look for the six fields on your ticket that start with the word departure. 
Solution: Build a hash with the field number to the rules that match. Repeatedly pluck out the field number that only matches to one rule. Each time there will only be one field number matching to a single rule (process of elimination).

## Question 17: Conway Cubes
Themes: Conways Game of Life, 3D Arrays (modelling using a Hash)

### Part 1
Prompt: How many cubes are left in the active state after the sixth cycle?
Solution: Model it as a hash containing a hash containing a hash with default values of BLANK. Make sure perimiter values are never empty.

### Part 2
Prompt: How many cubes are left in the active state after the sixth cycle if using 4D?
Solution: Very similar to Part 1 really.

## Question 18: Operation Order
Themes: Parsing Arithmetic, Stacks, Infix Notation, Postfix Notation

### Part 1
Prompt: Evaluate the expression on each line of the homework; what is the sum of the resulting values?
Solution: Convert to Postfix Notation, then Process using Stacks.

### Part 2
Prompt: What do you get if you add up the results of evaluating the homework problems using these new rules?
Solution: Same as Part 1!

## Question 19: Monster Messages
Themes: Stacks, Recursion 

### Part 1
Prompt: How many messages completely match rule 0? 
Solution: Use recursion and a "stack" to see if the top rule in the stack can be reduced to smaller rules or characters that in turn match the rest.

### Part 2
Prompt: After updating rules 8 and 11, how many messages completely match rule 0?
Solution: Same as Part 1!

## Question 20: Jurassic Jigsaw
Themes: 2D arrays, Rotation, Flipping

### Part 1
Prompt: What are the corner pieces?
Solution: Model Tile as a class with lots of helper methods like #all_varients, and #flip_horizontal, and #rotate. Include pointers to neighboring tiles. Pick tiles that only have two neighboring pieces and those are the corners.

### Part 2: 
Prompt: How many waves are in the final picture
Solution: Convert the linked list of pieces into a 2D array of tiles, remove the borders, flip and rotate big picture until you find sea monsters, template match for the monsters and remove, then count the remaining # chars.

## Question 21: Allergen Assessment
Themes: Hash, Sudoku Solving

### Part 1
Prompt: Determine which ingredients cannot possibly contain any of the allergens in your list.
Solution: Build a hash of allergens to lists of ingredients. Fill up the hash, but each time the new list for an allergen is the set intersection of the old list with the current list of ingredients for the current food. The allergen-free ingredients are the ones not in any of the values in the hash.

### Part 2
Prompt:  What is your canonical dangerous ingredient list?
Solution: Similar to Question 16. Find the allergen in the hash with just one item in its list value. Match, then elimate that item from all the other lists, then repeat.

## Question 22: Crab Combat
Themes: Recursion, Cloning

### Part 1
Prompt: What is the winning player's score?
Solution: Pretty trivial, follow the instructions carefully

### Part 2
Prompt: What is the winning player's score with the new rules?
Solution: Recursion and carefully rule following!

## Question 23: Crab Cups
Themes: Linked Lists, a Hash pointing to Nodes on the List

### Part 1
Prompt: Using your labeling, simulate 100 moves. What are the labels on the cups after cup 1?
Solution: Follow the instructions carefully, I used an array of cups and leveraged #index and #delete_at and #insert_at a lot.

### Part 2
Prompt: Same as Part 1 but 10 million moves instead of 100 and a longer line of cups.
Solution: My array solution to Part 1 wasn't enough, calling #index multiple times per iteration is simply too slow. The trick here was to use a different data structure; specficially use a Linked List because you are only dealing with neighboring pieces. The extra special trick too was having a Hash mapping cup label numbers to their Linked List Nodes; making it really really quick to move to any point of the linked list based on the cup value. Super cool; I haven't solved a problem using a Linked List AND a HashMap in this way before.

## Question 24: Lobby Layout
Themes: Regex Interpretation, Hashes, Game of Life, Hexagon Coordinates

### Part 1
Prompt: After all of the instructions have been followed, how many tiles are left with the black side up?
Solution: Very similar to Question 17. Maintain a hash with good logic for default entries.

### Part 2
Prompt: How many tiles will be black after 100 days?
Solution: Similar to Part 1, take care to "delete" entries from the Hash that we know won't change between iterations.

## Question 25: Combo Breaker
Themes: Cryptography, Finding factors of numbers

### Part 1
Prompt: What encryption key is the handshake trying to establish?
Solution: Exhaustive search counting upwards! Make sure not to restart every time otherwise it will take too long.

### Part 2
No Part 2!