# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

    Team 23: Jacob Smith, and Matthew Mai
    Team 39: Alan Fong

## Summary

    In this lab we designed a Ripple Counter and Modulo Counter, which use jk, d, and t flip flops. We learned how to implement this via verilog code and vivado. For the modulo counter, we set the count to stop at to 6, making the highest possible number we can get 5, or 101. The ripple counter on the other hand is % 8, meaning that the highest count we can get is 7, or 111. The ripple counter starts at 111, because the T Flip Flop is activated on the first count signal sent by the BtnC. BtnU was used as a reset in the case that we wanted to stop our count. 

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

    The modulo counter divdes the clock by 2 * count because the amount of clock cycles activated is double that of what is shown in the modulo counter. Since the modulo counter doesn't count each time the clock signal changes, dividing the clocks by 2 * count allows us to count each time the signal is 1.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

    The ring counters output is all 1's on the first cycle because it counts down from 7 to 0. It does this because the first TFF clock signal is 1, which forces the ring counter to be all ones before counting down.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

    To calculate we used log2(cval) which our cval is 1000, and when we calculate that we get around ~10 bits 
