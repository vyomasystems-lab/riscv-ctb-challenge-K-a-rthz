Loop was running indefinetly as there is any mtvec variable. Used priveleged spec to undestand the handling of CSRs.
Created a mtvec variable and made the program counter return to handler to execute the instructions and after handling exceptions.

![Alt text](<Screenshot (99).png>)

Changes made: 
 la t0, mtvec_handler
 csrw mtvec, t0

  csrr t2, mepc
  addi t2, t2, 4
  csrw mepc, t2

  Increased Program Counter Value to exit from loop.