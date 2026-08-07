# VALID/READY Handshake Protocol

A Verilog-based synchronous VALID/READY handshake protocol designed for reliable data transfer between digital hardware modules.

## Overview

This project implements a synchronous VALID/READY handshake mechanism using Verilog HDL. The protocol controls data transfer between a sender and receiver using `valid` and `ready` signals.

A data transfer occurs when both `valid` and `ready` are asserted at the same clock cycle.

## Features

- Synchronous VALID/READY handshake
- Reliable data transfer
- Verilog RTL implementation
- Dedicated Verilog testbench
- FPGA implementation
- Digilent Arty A7 constraint file
- Simulation and hardware verification

## Project Files

| File | Description |
|---|---|
| `handshake_protocol.v` | Main RTL implementation |
| `tb_handshake_protocol.v` | Verilog testbench |
| `arty.xdc` | Arty A7 FPGA pin constraints |
| `flow.json` | FPGA/design flow configuration |
| `Makefile` | Build and flow automation |
| `arty_a7.jpg` | FPGA implementation photo |

## Handshake Operation

The basic transfer condition is:

```text
VALID = 1
READY = 1
       ↓
Data Transfer
