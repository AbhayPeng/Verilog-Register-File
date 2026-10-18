# Verilog-Register-File
A standard 32x32-bit register file design implemented in Verilog HDL with an accompanying behavioral testbench.

Architecture
- Capacity: 32 registers, 32-bits wide.
- Reads: Dual asynchronous ports (rd1, rd2).
- Writes: Single synchronous port (wdata) on posedge clk.
- Register 0: Hardwired to 0. Writes to register 0 are ignored.

Ports
- clk: System clock
- wenable: Write enable
- A1, A2: 5-bit read addresses
- A3: 5-bit write address
- wdata: 32-bit input data
- rd1, rd2: 32-bit output data

Testbench Sequence
1. 0ns: Initialize all inputs to 0.
2. 10ns: Write 32'hDDDDAAA0 into Register 5.
3. 20ns: Disable wenable.
4. 30ns: Read Register 5 and Register 0 to verify data storage and grounding.
