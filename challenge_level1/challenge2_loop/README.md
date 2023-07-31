Loop was running indefinetly as there isn't any comparison to stop it from executing. 
Rectified the error by adding a conditinal instruction  and corrected the loop value.
Generated test_spike file successfully.

Changes made:
  la t0, test_cases
  addi t6, t0, 32
  li t5, 3

(bge t0, t6, test_end)


![Alt text](<Screenshot (98).png>)