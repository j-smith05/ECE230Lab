# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names

Group 23: Jacob Smith, and Matthew Mai
Group 39: Alan Fong

## Summary

    In this lab, we learned how to implement D-Flip Flops, JK-Flip Flops, and T-Flip Flops in Vivado with Verilog code, and how switches and leds of a basy board interact with our logic we created. We also learned the differences between sensetive, and edge sensetive circuits. This allows us to understand how information can be stored and updated. 

## Lab Questions

### What is difference between edge and level sensitive circuits?

    The difference between edge and level sensitive circuits is that edge sensitive circuits only look at the rising or falling edge to activate, while level sensitive circuits look at the entire clock pulse to activate.

### Why is it important to declare initial state?

    It is important to declare an initial state because the FPGA does not have any way of knowing the state of any of the various pieces of memory within, which is why we need to set a default case.

### What do edge sensitive circuits let us build?

    This allows us to use systems that allows us to store, and reset values in a controlled way while remaining synchronized.
