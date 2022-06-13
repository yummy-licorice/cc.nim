import argparse, osproc, strutils

var p = newParser:
  flag("-s", "--script")
  arg("command")
  arg("substring")

try:
  let opts = p.parse()
  
  let exCmd = execCmdEx(opts.command)
  let searchString: string = opts.substring
  
  if exCmd[1] == 1:
    quit 1
  
  if opts.script:
    if searchString in exCmd[0]:
      echo "true"
    else: 
      echo "false"
  else:
    if searchString in exCmd[0]:
      echo "The output of command '" & opts.command & "' contains the string '" & opts.substring & "'"
    else: 
      echo "The output of command '" & opts.command & "' does not contain the string '" & opts.substring & "'"
except:
  let helpMsg = """
Usage:
  cc [flags: optional] [command] [string-to-search-for]
A simple command line utility to check if the output of a command contains a substring
Flags:
  -h, --help                    print this help message
  -s, --script                  only return 'true' or 'false' (for usage in shell scripts)
  """
  echo helpMsg
      




