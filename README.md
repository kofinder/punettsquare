# PunnettSquare

**PunnettSquare** is a simple desktop application built with **C and GTK 3** designed as an **experimental tool for exploring genetic inheritance using Punnett Squares**.  

This project serves as a hands-on learning tool for **students, educators, and enthusiasts** interested in genetics, helping to visualize **allele combinations** and **offspring probabilities**.

---

## 🧪 Purpose

The main goal of PunnettSquare is to provide a **graphical interface** to experiment with **monohybrid and simple dihybrid crosses** in genetics.  
Users can input parental alleles and see the resulting combinations displayed, giving a visual understanding of **dominant and recessive traits**.

---

## ⚙️ Features

- Minimal GTK-based GUI for easy experimentation  
- Visual display of Punnett Squares  
- Interactive labels and buttons for generating offspring combinations  
- Lightweight and cross-platform (Linux, potentially Windows/macOS with GTK)  
- Educational focus — not intended for professional genetic analysis  

---

## 🏗️ Installation & Build

### Prerequisites

- **C Compiler** (gcc)  
- **CMake**  
- **GTK 3 development libraries**  
  ```bash
  sudo apt install build-essential cmake pkg-config libgtk-3-dev


# Clone project (or navigate to your folder)
cd punnettsquare

# Build the project using Makefile
make

# Run the application
make execute

# Clean build files
make clean



# Credit
- https://punnettsquare.org/topics/punnett-square-guide/