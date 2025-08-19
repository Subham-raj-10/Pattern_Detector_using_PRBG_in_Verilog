# 🔍 Pattern Detector using PRBG 
This project implements a pattern detector to identify the sequence 101 using Verilog HDL. A Pseudo-Random Bit Generator (PRBG) provides a one-bit serial input stream to the detector circuit. Both modules share a clock and reset input, mapped to the ZedBoard’s clock and switch. The detector outputs the current 3-bit PATTERN and a one-bit Pattern_Detected flag, which is displayed on the ZedBoard’s LEDs. When reset is asserted, the system initializes with a seed; when released, the detector continuously checks for the sequence 101 in the PRBG-generated random stream. A testbench verifies detection accuracy for different input conditions.

## 🧠 Project Summary
- Detects the pattern `101` in a serial bitstream.
- Uses a 4-bit PRBG to generate random sequences.
- Synchronous design with `CLK` and `Reset`.
- Simulated with a testbench for loopback verification.

## 📌 Features
- **Random Input Generation** using a two-stage PRBG
- **Pattern Detector** for detecting `101`
- **VIO Integration** for input/output on ZedBoard
- **Synthesis Reports** including **Timing Summary** and **Utilization Metrics**
- **Testbench with Functional Verification**

## ⚙️PRBG Architecture 
<img width="520" height="449" alt="Screenshot 2025-07-21 132921" src="https://github.com/user-attachments/assets/f19e4241-0ac4-4d92-a85d-dfd06d244c83" />
The Pseudo-Random Bit Generator (PRBG) architecture generates a serial stream of random bits using arithmetic and shift operations. It consists of two parallel blocks, each performing shift, multiply, and add operations on seed values (x₀, y₀). The outputs are registered and compared to produce a random bit zᵢ. This output is fed to a pattern detector that searches for the binary pattern 101.

## ⚙️ Block Diagram (ZedBoard VIO)
This design is implemented and verified using **VIO (Virtual Input/Output)** IP for real-time control and observation on ZedBoard.
<img width="1371" height="660" alt="image" src="https://github.com/user-attachments/assets/814ae713-8548-429a-8060-3c6b05997f8f" />

## 📈 Timing Summary
<img width="1541" height="490" alt="image" src="https://github.com/user-attachments/assets/77b89d2f-5426-4a1d-9923-b9051391c214" />

## 🧮 Resource Utilization (Post Synthesis)
<img width="1537" height="277" alt="image" src="https://github.com/user-attachments/assets/c0430bd9-211b-4b9f-8c4b-b0cad93498d3" />

## ✅ Applications
- 🔐 Cryptography: Random sequence generation for key stream generation.
- 🎰 Testing: Pattern detection in random inputs for hardware verification.
- 🧪 VLSI Labs: Educational tool for FSM and PRBG design.
- 🛰️ Communication Systems: Used in spread-spectrum and secure transmission.

  ## 📌 Notes
- Tested on **Vivado** with **ZedBoard**
- Fully synthesizable and verifiable with on-board VIO
- Can be extended for higher-order PRNG or cryptographic streams

 Thank you :)
