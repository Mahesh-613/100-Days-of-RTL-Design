# 16-bit Multiplier Using Repeated Addition

## Introduction
This repository contains the Register Transfer Level (RTL) implementation of a 16-bit digital multiplier modeled in Verilog. The design utilizes a repeated addition algorithm to calculate the product of two operands. Instead of using a dedicated hardware multiplier block, the system calculates the product by sequentially adding the multiplicand (Operand A) to an accumulator (P) exactly as many times as the value of the multiplier (Operand B). The architecture is strictly partitioned into an FSM-based Control Path and a structural Datapath, making it an excellent demonstration of Finite State Machine with Datapath (FSMD) design principles suitable for FPGA synthesis.

## Architecture and Modules
The system is partitioned into several independent sub-modules that interact together:

* **`data_path`**: The core execution unit that interconnects all arithmetic, comparison, and storage blocks.
* **`controller`**: A 5-state Finite State Machine (FSM) that generates the necessary datapath control signals (`ldA`, `ldB`, `ldP`, `clrp`, `decB`) based on the active state and the `eqz` feedback flag.
* **`ADD`**: A purely combinational 16-bit adder that performs the core data addition operations.
* **`CNTR`**: A 16-bit synchronous down-counter that decrements the value of Operand B until it bottoms out at zero.
* **`PIPO` & `PIPO_CLR`**: Parallel-In-Parallel-Out registers. `PIPO` holds the multiplicand (A), while `PIPO_CLR` acts as the product accumulator (P) featuring a synchronous clear.
* **`EQZ`**: A comparator that continually monitors the counter and triggers a high flag (`eq`) when the value hits zero.

## Finite State Machine (FSM) Overview
The control path orchestrates the multiplication via five distinct states:
* **`s0` (Idle):** Waits for the external `start` signal.
* **`s1` (Load A):** Asserts the `ldA` signal to latch the first operand into register A.
* **`s2` (Load B & Clear):** Latching the second operand into the down-counter (`ldB`) while simultaneously clearing the product accumulator (`clrp`).
* **`s3` (Execute/Loop):** The core active state. Continuously adds A to P (`ldP = 1`) and decrements B (`decB = 1`). Stays in this loop until the zero-flag (`eqz`) is detected.
* **`s4` (Halt):** Computation completes; asserts the `done` flag and holds system outputs steady.

## Potential Drawbacks
* **High Execution Latency:** The multiplication completes in $O(N)$ clock cycles, where $N$ is the integer value of Operand B. For large multiplier values (e.g., $B = 65535$), the calculation requires tens of thousands of cycles, making it extremely inefficient for time-sensitive or real-time DSP operations.
* **Dynamic Power Consumption:** The continuous switching of the adder, counter, and registers over thousands of clock cycles leads to significant dynamic power dissipation compared to a single-cycle combinational multiplier.
* **Resource vs. Performance Trade-off:** While this method reduces logic footprint by reusing a single 16-bit adder, the severe penalty in execution speed limits its practical use to non-critical timing paths.

## Corner Cases
* **Multiplication by Zero:** If Operand B is `16'b0`, the counter starts at zero. The `EQZ` module detects this, and the FSM immediately transitions out of the loop state, correctly resulting in a product of `0` without unnecessary operations.
* **Capacity and Overflow Truncation:** Both input operands are 16-bit, meaning the theoretical maximum product requires 32 bits ($2^{16} 	imes 2^{16}$). Because the accumulator register (`PIPO_CLR P`) and the `ADD` module are hardcoded to 16 bits, multiplying large numbers will result in severe data overflow, and only the lower 16 bits of the product will be retained.
* **Multiplication by One:** Computes accurately but still incurs the overhead of transitioning through the entire FSM loop rather than being immediately bypassed.

## Further Improvements
* **Algorithmic Optimization:** Transition from repeated addition to a **Shift-and-Add** algorithm or **Booth's Multiplication Algorithm**. This would drastically reduce the latency from $O(N)$ cycles to a predictable $O(W)$ cycles (where $W$ is the 16-bit width), executing in a maximum of 16 clock cycles.
* **Datapath Bit-Width Expansion:** Upgrade the Product Accumulator, the Adder, and the relevant routing buses to 32 bits to prevent arithmetic overflow when multiplying two 16-bit numbers.
* **Early-Exit Bypass Logic:** Introduce asynchronous checks in the `controller` to immediately flag `done` and output `0` if either operand is zero before entering the calculation states.

## Tools & Environment
* **Language:** Verilog HDL
* **Simulation/Synthesis:** Xilinx Vivado
* **Target Hardware:** Basys-3 FPGA Board 

## Simulation & Output Waveforms

> **Note:** Replace the placeholder links below with your actual simulation screenshots to demonstrate the correctness of the repeated addition sequence across clock cycles.

### RTL Schematic
*(Below is the structural diagram generated after elaboration)*

![RTL Schematic](docs/images/rtl_schematic_placeholder.png)

### Behavioral Simulation Waveform
*(Below is the timing diagram showing the FSM state transitions (s0 to s4) and the final accumulated product)*

![Simulation Waveform](docs/images/waveform_placeholder.png)

---
**Author:** Mahesh Kumar Sahoo  
**Reg No:** 2341019194
