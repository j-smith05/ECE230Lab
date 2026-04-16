# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

Group 23: 
Jacob Smith and Matthew Mai

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab is creating truth tables, through K-Maps, in multiple files through the naive, minterm and maxterm files which allowed us to verify we had created our SOP and POS functions correctly, by comparing the wave forms of the truth tables. We then connected it to a Basys board, which allowed our functions to be tested and verified via greens lights turning on when they needed to and vice versus when they didn't need to. This was a good lab to teach us how K-Maps work and how the functions look in Verilog code.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

A K-map isn’t really a flat grid, it represents a circular/looped arrangement of binary values. The left and right edges are actually adjacent, and the top and bottom edges are adjacent too. Its so K-Maps are able to get the most value (Groups of 4/8) as the more terms the better, so its a way 

### Why are the names Sum of Products and Products of Sums?

In a Sum of Products, variables are first combined using AND to form product terms, and then those terms are combined using OR. In a Product of Sums, variables are first combined using OR to form sum terms, and then those terms are combined using AND. The names simply reflect what each of them do the Sum of Products being (AB) + (CD), and Product of sums being (A + B)(C + D). 

### Open the test.v file – how are we able to check that the signals match using XOR?

We can check that signals match using XOR because XOR only outputs a 1 when the two inputs are different. If both signals are the same, the XOR result will be 0, which means there is no difference between them and the output is correct. This makes XOR an easy way to verify results in a test file, since any mismatch between expected and actual signals will produce a 1 and immediately show that something is wrong. XORS are simply the easiest way to verify since if they're the same it will output 0, and if it doesn't we did something wrong.