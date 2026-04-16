# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

    Group 23: Jacob Smith, and Matthew Mai
    Group 39: Alan Fong

## Summary

    In this lab we learned about the differences and similaries between two types of state machines. Additionally we had more practice in creating K-Maps to build our "Next State" logic, which is the easiest way to figure out the logic. We also learned how the different types of encoding uses flip flops, and combintintoral logic. A one hot counter is when each bit represents a different number, meaning however many numbers you need to count to, you need LED's. A binary counter in contrast, only uses 2^x LED's to count, making it much more condensed but hards to implement, so if you have 8 digits you need to count to you only need 3 LEDS (i.e 111 = 7, and 000 = 0).

## Lab Questions

### Compare and contrast One Hot and Binary encodings

    One-hot encoding uses a single flip-flop per state, which will cause it to take more flip-flops but makes the next state logic next-state logic simpler and easier to understand. Binary encoding uses fewer flip-flops, but the logic is more compact in hardware and usually requires more careful K-map work because each state is represented by multiple bits. 

### Which method did your team find easier, and why?

    Our team found one hot encoding easier then binary. As one hot uses multiple flip flops, which allowed us to create more direct and understandable equations. Binary was more compact, but it required more thought and thinking to connect between the different k-maps for each of the different states. 

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA

    When working with FPGA if we can use as many flip flops as we want, and simple logic a one_shot encoding logic would what would work best. When working with less flip flops, which is more useful when our number of states, it will be a better idea to use binary as binary is ideal for less flip flops and less storage. 
