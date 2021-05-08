# Milo

# Introduction
Add later man

# Requirements and Installation Guide
## Requirements
The requirements are:

* CMake 3.14+ highly recommended.
* A C++17 compatible compiler
* Git
* Doxygen (optional)
* Pre-commit
* Clang clang-format clang-tidy uncrustify cppcheck

To configure:

```bash
cmake -S . -B build
```

Add `-GNinja` if you have Ninja.

To build:

```bash
cmake --build build
```

To test (`--target` can be written as `-t` in CMake 3.15+):

```bash
cmake --build build --target test
```

To build docs (requires Doxygen, output in `build/docs/html`):

```bash
cmake --build build --target docs
```

To use an IDE, such as Xcode:

```bash
cmake -S . -B xbuild -GXcode
cmake --open xbuild
```

## Installation
```bash
# For pre-commit
pip install pre-commit
sudo apt install clang-format cppcheck 
pip install cmakelang
pip install cmakelint
# Install pre-commit hook
pre-commit install
```

## Hook informations

| Hook Info                                                                | Type                 | Languages                             |
| ------------------------------------------------------------------------ | -------------------- | ------------------------------------- |
| [clang-format](https://clang.llvm.org/docs/ClangFormatStyleOptions.html) | Formatter            | C, C++, ObjC                          |
| [cppcheck](http://cppcheck.sourceforge.net/)                             | Static code analyzer | C, C++                                |
| [cmake-format](https://pypi.org/project/cmake-format/)                   | Formatter            | CMake                                 |
| [cmake-lint](https://pypi.org/project/cmakelint/)                        | Static code analyzer | CMake                                 |

## Run against all the files
`Pre-commit` on commit hook only runs on changed files, so sometimes we should run this for all files.
```bash
pre-commit run --all-files
```
