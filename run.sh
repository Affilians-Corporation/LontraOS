#!/bin/bash
cargo build --release
cargo objcopy --release -- -O binary kernel.img
qemu-system-riscv \
        -machine virt \
        -smp 2 \
        -m 1G \
        -nographic \
        -bios ./opensbi/build/platform/generic/firmware/fw_payload.elf 