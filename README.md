# CMOS 2-Bit ALU Using 3:8 Decoder

This repository contains the design and simulation files for a **2-bit Arithmetic Logic Unit (ALU)** built using **CMOS logic gates**, with operation control handled via a **3:8 line decoder**. The ALU performs essential arithmetic and logical operations, demonstrating transistor-level design using CMOS principles.

---

## 🧠 Project Objective

To implement a fully functional 2-bit ALU at the transistor level using CMOS logic, controlled via a 3:8 decoder to manage eight distinct operations. This project aims to strengthen understanding of VLSI fundamentals, digital design modularity, and CMOS layout practices.

---

## ⚙️ Supported Operations

The ALU supports the following 8 operations, each selected by a unique 3-bit opcode interpreted by the 3:8 decoder:

| Opcode | Operation     | Description                    |
|--------|---------------|--------------------------------|
| 000    | A + B         | 2-bit binary addition          |
| 001    | A - B         | 2-bit binary subtraction       |
| 010    | A & B         | Bitwise AND                    |
| 011    | A \| B        | Bitwise OR                     |
| 100    | A XOR B       | Bitwise XOR                    |
| 101    | NOT A         | Bitwise complement of A        |
| 110    | A + 1         | Increment A                    |
| 111    | A - 1         | Decrement A                    |

---

## 🏗️ Design Architecture

- **CMOS Gates**: All operations are implemented at the transistor level using static CMOS logic.
- **3:8 Decoder**: A decoder receives a 3-bit opcode and activates one output line to enable a specific operation block.
- **Tri-state Logic / MUX**: Only the selected operation's output is forwarded to the final ALU output using tri-state buffers or multiplexers.
- **Modular Blocks**: Each operation is a separate module, allowing easy testing and reuse.

---


---

## 🧪 Simulation & Testing

- **Logic Verification**: Performed using DSCH or Verilog.
- **Timing Analysis**: Waveforms generated for each operation.
- **Power Estimation**: CMOS design optimized for low static power consumption.

---

## 🛠 Tools Used

- **Microwind & DSCH** – CMOS schematic and layout tools
- **LTspice / Cadence** – For analog-level transistor simulations (optional)
- **Logisim / Verilog** – High-level functional verification (optional)

---

## 📌 Applications

- VLSI academic projects and lab assignments
- CMOS layout and logic design practice
- Teaching aid for digital and computer architecture

---

## 🤝 Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to modify.

---

## 📜 License

This project is open-source and available under the [MIT License](LICENSE).

---

## 📞 Contact

For queries or collaboration, feel free to reach out via [GitHub Issues](../../issues) or email.

---



