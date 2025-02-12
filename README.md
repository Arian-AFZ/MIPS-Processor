# MIPS Processor

This repository contains 16-bit single-cycle and multi-cycle MIPS processor models in Quartus II. I designed a single-cycle MIPS processor using Quartus II version 13.1. The processor supports arithmetic and logical operations, jump instructions, and cache accesses. Then, I turned it into a multi-cycle processor by modifying the control unit and making minor adjustments to the microarchitecture.

---

## ISA

### Register Instructions

These instructions are the same as their name suggests, used when we want to assign the value of one register to another. Register 0 is hardwired to zero. These instructions have the following format:

| opcode | rs | rt | rd | funct |
|--------|----|----|----|-------|
| 4 bits | 3 bits | 3 bits | 3 bits | 3 bits |

In MIPS processors, all instructions of this type have the same opcode value of zero, and the funct field determines the type of operation. The table of operations is as follows:

| Mnemonic | Operation    | funct |
|----------|--------------|-------|
| ADD      | rd ← rs + rt | 000   |
| SUB      | rd ← rs - rt | 001   |
| AND      | rd ← rs & rt | 010   |
| OR       | rd ← rs | rt | 011   |
| MULT     | rd ← rs * rt | 100   |
| XOR      | rd ← rs ^ rt | 101   |
| JR       | PC ← rs      | 111   |

### Immediate Instructions

These instructions themselves are of three types: (1) responsible for a conditional jump, (2) used for load and store, (3) for performing an operation with a constant value and storing it. The format of these instructions is as follows:

| opcode | rs | rt | immediate |
|--------|----|----|-----------|
| 4 bits | 3 bits | 3 bits | 6 bits |

The list of these instructions and their opcodes is as follows:

| Mnemonic | Operation                                      | opcode |
|----------|------------------------------------------------|--------|
| ADDi     | rt ← rs + SIGN_EXTEND(immediate)               | 1000   |
| SUBi     | rt ← rs - SIGN_EXTEND(immediate)               | 1001   |
| ANDi     | rt ← rs & SIGN_EXTEND(immediate)               | 1010   |
| ORi      | rt ← rs \| immediate                            | 1011   |
| SB       | MEM[rs + SIGN_EXTEND(immediate)] ← rt          | 0001   |
| LB       | rt ← MEM[rs + SIGN_EXTEND(immediate)]          | 0011   |
| BEQ      | if (rt == rs): PC ← PC + SIGN_EXTEND(immediate << 1) | 1110   |
| BNQ      | if (rt != rs): PC ← PC + SIGN_EXTEND(immediate << 1) | 1111   |

### Jump Instructions

These instructions are used for jumps. The format of these instructions is as follows:

| opcode | NOT USED | address |
|--------|----------|---------|
| 4 bits | 5 bits   | 7 bits  |

As you can see, the address length is 8 bits because, considering the design of this processor's memory, it can store and execute up to 256 instructions. The NOT USED bits are simply don't care bits. These instructions include the following:

| Mnemonic | Operation                        | opcode |
|----------|----------------------------------|--------|
| J        | PC ← address << 1                | 0110   |
| JAL      | R[7] ← PC + 2, PC ← address << 1 | 0111   |

---

## Usage

To view and test the processors, [download and install Quartus II version 13.1](https://www.intel.com/content/www/us/en/software-kit/666221/intel-quartus-ii-web-edition-design-software-version-13-1-for-windows.html). Then, import the project files 'MIPS.qpf' and view the block diagram files `*.bdf`. The top modules are `SingleCycle` and `MultiCycle`.

For testing, `*.mif` files can be used to initialize the data cache with instructions to be executed. For example, a test is written as follows:

```
DEPTH = 18; -- The size of memory in words
WIDTH = 16; -- The size of data in bits
ADDRESS_RADIX = HEX; -- The radix for address values
DATA_RADIX = BIN; -- The radix for data values
CONTENT -- start of (address : data pairs)

%
addi $t0, $t1, 10   # Initialize $t1 with 10
addi $t0, $t2, 5    # Initialize $t2 with 5
add $t1, $t2, $t3   # Add $t1 and $t2 and store the result in $t3
andi $t4, $t4, 0    # Initialize $t4 with 0
ori $t0, $t5, 1     # Initialize $t5 with 1
subi $t0, $t6, 20   # Initialize $t6 with -20

add $t6, $t3, $t6   # Add $t6 and $t3 and store the result in $t6
beq $t0, $t6, equal # Jump to `equal` if $t0 (0) and $t6 are equal

not_equal:
    sb $t4, $t4, 0 
    j end_program   

equal:
    sb $t3, $t4,  0  
    jal end_program      

end_program:
lb $t2, $t1, -1
%

BEGIN
02: 1000000001001010; -- 804A
03: 1000000010000101; -- 8085
04: 0000001010011000; -- 0298
05: 1010100100000000; -- A900
06: 1011000101000001; -- B141
07: 1001000110010100; -- 9194
08: 0000110011110000; -- 0CF0
09: 1110000110000011; -- E183
0A: 0001100100000000; -- 1900
0B: 0110000000001110; -- 600E
0C: 0001011100000000; -- 1700
0D: 0111000000001110; -- 700E
0E: 0011010001111110; -- 347F

END
```
