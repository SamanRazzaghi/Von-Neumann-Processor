# Von Neumann Processor Simulator

This project implements a basic processor using the Von Neumann architecture. It supports **25 unique operations** and simulates instruction execution via memory manipulation.

---

## 🧠 Architecture Overview

The processor features a shared memory space for instructions and data, adhering to the Von Neumann model. The core includes support for arithmetic, logic, control, memory, and I/O operations.

---

## 🧾 Supported Instructions

| Operator | Opcode (HEX) | Description |
|---------|---------------|-------------|
| `AND`   | `0` or `8`    | AC ← AC ∧ M |
| `ADD`   | `1` or `9`    | AC ← AC + M |
| `LDA`   | `2` or `A`    | AC ← M      |
| `STA`   | `3` or `B`    | M ← AC      |
| `BUN`   | `4` or `C`    | PC ← M      |
| `BSA`   | `5` or `D`    | M ← return address, PC ← M + 1 |
| `ISZ`   | `6` or `E`    | M ← M + 1; Skip next if M == 0 |
| `CLA`   | `7800`        | Clear AC    |
| `CLE`   | `7400`        | Clear E     |
| `CMA`   | `7200`        | Complement AC |
| `CME`   | `7100`        | Complement E |
| `CIR`   | `7080`        | Circular right shift (AC, E) |
| `CIL`   | `7040`        | Circular left shift (AC, E) |
| `INC`   | `7020`        | AC ← AC + 1 |
| `SPA`   | `7010`        | Skip if AC > 0 |
| `SNA`   | `7008`        | Skip if AC < 0 |
| `SZA`   | `7004`        | Skip if AC == 0 |
| `SZE`   | `7002`        | Skip if E == 0 |
| `HLT`   | `7001`        | Halt        |
| `INP`   | `F800`        | AC ← Input; Clear flag |
| `OUT`   | `F400`        | Output ← AC; Clear flag |
| `SKI`   | `F200`        | Skip if input flag set |
| `SKO`   | `F100`        | Skip if output flag set |
| `ION`   | `F080`        | Enable interrupt |
| `IOF`   | `F040`        | Disable interrupt |

---

## 🧪 Sample Programs

Replace the memory block with one of the following samples to test functionality.

---

### 📥 Sample 1: `A = A + [M[M[B]]]; print(A)`

**Description**: This program performs a nested memory access and addition, then prints the result.

```verilog
// Interrupt handling
RAM[0]  = 16'h0000;
RAM[1]  = 16'hf200;
RAM[2]  = 16'h4007;
RAM[3]  = 16'hf800;
RAM[4]  = 16'h3040;
RAM[5]  = 16'h7800;
RAM[6]  = 16'h4034;
RAM[7]  = 16'hf100;
RAM[8]  = 16'h4001;
RAM[9]  = 16'h2040;
RAM[10] = 16'hf400;
RAM[11] = 16'h7800;
RAM[12] = 16'h403c;
for(i = 13; i < 50; i++) RAM[i] = 0;

// Main
RAM[50] = 16'hf080;
RAM[51] = 16'h2043;
RAM[52] = 16'h7004;
RAM[53] = 16'h4033;
RAM[54] = 16'hf040;
RAM[55] = 16'h2040;
RAM[56] = 16'h9041;
RAM[57] = 16'h3040;
RAM[58] = 16'hf080;
RAM[59] = 16'h2043;
RAM[60] = 16'h7004;
RAM[61] = 16'h403b;
RAM[62] = 16'hf040;
RAM[63] = 16'h7001;
RAM[64] = 16'h0000;
RAM[65] = 16'h0042;
RAM[66] = 16'h0003;
RAM[67] = 16'h0001;
for(i = 68; i < 128; i++) RAM[i] = 0;

```
### ✖️ Sample 2: `P = X * Y`

**Description**: This program multiplies two variables `X` and `Y` by performing repeated addition and stores the result in memory. It simulates multiplication using basic instructions without built-in multiply support.

```verilog
for(i = 0; i < 50; i++) RAM[i] = 0;

// Main
RAM[50] = 16'h7400;
RAM[51] = 16'h2044;
RAM[52] = 16'h7080;
RAM[53] = 16'h3044;
RAM[54] = 16'h7002;
RAM[55] = 16'h4039;
RAM[56] = 16'h403d;
RAM[57] = 16'h2043;
RAM[58] = 16'h1045;
RAM[59] = 16'h3045;
RAM[60] = 16'h7400;
RAM[61] = 16'h2043;
RAM[62] = 16'h7040;
RAM[63] = 16'h3043;
RAM[64] = 16'h6046;
RAM[65] = 16'h4032;
RAM[66] = 16'h7001;
RAM[67] = 16'h0004;
RAM[68] = 16'h000d;
RAM[69] = 16'h0000;
RAM[70] = 16'hfff8;
for(i = 71; i < 128; i++) RAM[i] = 0;
```
---
