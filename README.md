# 16-bit CPU Verilog Implementation

This project is a custom-designed 16-bit CPU developed in Verilog using Vivado. 

The CPU implements a simple instruction set architecture and demonstrates the fundamental concepts of processor design, including the datapath, control unit, and instruction execution cycle.

## Features

- 16-bit architecture
- Harvard-style memory (separate instruction and data memory)
- Modular design:
  - ALU (Arithmetic Logic Unit)
  - Control Unit
  - Register File
  - Program Counter
- Custom instruction set
- Instruction support includes:
  - Arithmetic operations: ADD, SUB
  - Logic operations: AND, OR, NOT
  - Load/store: LDI, LD, ST
  - Branching: JMP, BEQZ, BNEQ
  - NOP, HALT


## CPU Modules

- **ALU**  
  Performs arithmetic and logic operations based on the control signal.

- **Register File**  
  Contains 8 general-purpose 16-bit registers (R0–R7).

- **Control Unit**  
  Decodes instruction opcodes and generates control signals.

- **Program Counter (PC)**  
  Stores the address of the current instruction.

- **Instruction Memory**  
  Stores the instructions to be executed.

- **Data Memory**  
  Used to load from and store data into memory.

- **Datapath**  
  Integrates all major components and controls data flow across the CPU.

## Tools Used

- Vivado Design Suite (Xilinx)
- Verilog HDL
- GTKWave (for waveform analysis)

## Simulation and Testing

- A testbench is provided in `CPUTest.v` to simulate CPU behavior.
- Sample programs are provided for testing various instruction combinations.

## Example Instruction Format

| Instruction       | Opcode | Description                  |
|-------------------|--------|------------------------------|
| LDI R1, 5         | 0001   | Load immediate 5 into R1     |
| ADD R2, R1, R3    | 0010   | R2 = R1 + R3                 |
| ST R2, 0x10       | 0100   | Store R2 at memory 0x10      |
| BEQZ R2, LABEL    | 0110   | Branch to LABEL if R2 == 0   |

(Refer to `ControlUnit.v` for actual opcode values and logic.)

## Future Improvements

- Pipelined instruction execution
- Interrupt handling mechanism
- Stack operations (PUSH, POP)
- Expanded instruction set
- Custom assembler for the instruction set

