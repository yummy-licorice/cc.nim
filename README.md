# CliContains (cc)

## Installation
### Binary
Grab a binary from the github releases page, and drop it in /usr/local/bin or ~/.local/bin/ (make sure both of these are in $PATH)

### From Source
Run these commands to install CliContains
```bash
cd cc # Move into directory
make # Compile cc
make install # Move the cc binary into /usr/local/bin
```

## Usage
```bash
cli-contains -h # Shows help message
cli-contains -s "ls -a" . # Returns true
```
