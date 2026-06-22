# EE/CS Department - Computer Architecture & Systems
## Lab 2: Memory Access and Addressing Modes in ARMv7

### 1. Objectives
The main objectives of this laboratory session are to:
* Understand the Load/Store architecture of the ARMv7 processor.
* Master the implementation of various ARMv7 addressing modes including Immediate, Register, Offset, Pre-indexed, and Post-indexed addressing.
* Learn how to efficiently manipulate arrays and memory structures at the assembly level.
* Analyze the execution behavior of data movement instructions within a simulator environment.

### 2. Theoretical Background
Unlike CISC architectures, ARM is a RISC processor utilizing a strict Load/Store architecture. This means data processing instructions operate exclusively on registers, not directly on main memory. Memory access is handled solely via `LDR` (Load Register) and `STR` (Store Register) instructions.

To fetch or store data efficiently, the processor calculates the target memory address using a **Base Register** combined with an **Offset**. The calculation modes are classified as follows:
1. **Immediate/Register Offset:** A constant value or register value is added/subtracted to/from the base register.
2. **Pre-indexed Addressing:** The offset is applied to the base register to compute the target address, and the base register is then updated with this new address (`!`).
3. **Post-indexed Addressing:** The current base register address is used for the memory access, and the base register is subsequently incremented/decremented by the offset amount.

### 3. Laboratory Tasks
The lab assignment requires implementing and evaluating the following core routines:
* **Task 2.1 - Basic Register and Immediate Initialization:** Initialize registers with concrete values and observe immediate encoding limits.
* **Task 2.2 - Array Data Manipulation:** Load an array of integers from the `.data` section into registers using a loop, utilizing post-indexed addressing to automate pointer arithmetic.
* **Task 2.3 - Indexing Modification Analysis:** Construct an assembly routine to demonstrate the precise behavioral differences between Offset, Pre-indexed, and Post-indexed memory lookups on a fixed data sequence.
* **Task 2.4 - Memory Vector Summation:** Traverse a defined multi-element block in memory, compute the cumulative sum of its entries, and write the final result back to a dedicated memory location.

### 4. Lab Deliverables & Requirements
* Correctly structured assembly source code files (`.s`) utilizing clean directives (`.global`, `.data`, `.text`).
* Implementation of memory-bound loops without manual pointer modification instructions (leveraging advanced hardware addressing features instead).
* Execution logs or simulator watch windows verifying proper register status changes after indexing modifications.

