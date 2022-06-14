import argparse, osproc, strutils

var p = newParser:
  flag("-s", "--script")
  arg("command")
  arg("substring")

try:
  let 
    opts = p.parse()
    exCmd = execCmdEx(opts.command)
    searchString: string = opts.substring
  
  if exCmd[1] == 1:
    quit(1)
  
  if opts.script:
    echo $searchString in exCmd[0]
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
      




