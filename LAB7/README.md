# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names:

    Jacob Smith and Matthew Mai

## Summary

    In this lab we learned how to use the half subtraction, and 1's and 2's complement in Vivado. Using this implementation we saw they we needed to account for an extra carry value, and extra wires to allow for the borrow/carry and inverts. In the 1's complement we saw that we needed to account for the invertation of the value, and then account for the extra addition of adding our carry back. In the 2's complement we had to simply just account for the 8 different bits, and their compliments, using our Full Adder from the previous lab to do all the addition. 

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

   A Half Adder adds two single bits together and produces a sum and a carry output. In contrast, a Half Subtractor subtracts one bit from another and produces a difference and a borrow output.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

    The hard part about the end around carry is adding it back to the one's complement as you have to account for it. Since it's a 4 bit adder for one's compliment we get a fifth carry bit that would normally overflow/carry which we need to use a carry wire to make it so it doesn't overflow. Then make it change to one's compliment.

### 3 - What is the edge case and problem with Two’s Complement number representation?

    One edge case with Two’s Complement is that the smallest negative number cannot be negated. Because of this, the most negative value does not have a positive equivalent that can be represented with the same number of bits. If you try to negate that value, it causes an overflow and ends up producing the same number again.

