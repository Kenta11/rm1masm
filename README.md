# MICRO-1 micro assembler written in Rust

[![Tests](https://github.com/Kenta11/rm1masm/actions/workflows/main.yml/badge.svg)](https://github.com/Kenta11/rm1masm/actions/workflows/main.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

`rm1masm` is the micro assembler for MICRO-1, a tiny microprogram-controlled computer for educational purposes.

## Command-line options

```
$ rm1masm --help
rm1masm 1.0.0
MICRO-1 micro assembler written in Rust

USAGE:
    rm1masm [OPTIONS] <input>

FLAGS:
    -h, --help       Prints help information
    -V, --version    Prints version information

OPTIONS:
    -o, --output <output>    Sets output path

ARGS:
    <input>    source code
```

## Installing

### Cargo

```
cargo install --git https://github.com/Kenta11/rm1masm
```

### Packages

- Debian: https://github.com/Kenta11/rm1masm/releases/download/v1.0.0/rm1masm_1.0.0_amd64.deb
- RedHat: https://github.com/Kenta11/rm1masm/releases/download/v1.0.0/rm1masm-1.0.0-1.el7.x86_64.rpm
- Arch Linux: https://github.com/Kenta11/rm1masm/releases/download/v1.0.0/rm1masm-1.0.0-1-x86_64.pkg.tar.zst

### Tarbolls

- Windows (x64): https://github.com/Kenta11/rm1masm/releases/download/v1.0.0/rm1masm_windows.zip
- Linux (x64): https://github.com/Kenta11/rm1masm/releases/download/v1.0.0/rm1masm_linux.tar.gz
- macOS (x64): https://github.com/Kenta11/rm1masm/releases/download/v1.0.0/rm1masm_macos.tar.gz

## Reference

- 馬場敬信：マイクロプログラミング，昭晃堂（1985）

## Link

- simulator: [m1sim](https://github.com/kaien3/micro1)
- assembler: [rm1asm](https://github.com/Kenta11/rm1asm)

## License

`rm1masm` is licensed under MIT license. See [LICENSE](LICENSE) for details.
