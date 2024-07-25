# VSTTE'21 Artifact for "Abstract Interpretation of LLVM with a Region-Based Memory Model" #

0. Requirements

Some of the scripts called by `generate_bitcode.sh` are defined only
for OS Mac. Sorry about that. It shouldn't be hard to adapt them for
Linux but I haven't done yet.

- [cmake](https://cmake.org/) >= 3.13
- [llvm](https://releases.llvm.org/download.html) 10.0.1
- [gllvm](https://github.com/SRI-CSL/gllvm) >= 1.3.0
- [gmp](https://gmplib.org/)
- [boost](https://www.boost.org/) >=165

1. Download all the C projects, compile, and generate LLVM bitcode using `gllvm`:

```
./generate_bitcode.sh
```

2. Download and install [Clam](https://github.com/seahorn/clam):

```
./install_clam.sh
```

If you see the error `ld: library not found for -lLLVMExtensions` then
the problem is that it found LLVM 10.0.0 but it requires LLVM 10.0.1.

3. Run paper experiments:

```
./run_experiments.sh

```

