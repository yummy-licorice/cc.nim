import os, strutils, terminal, osproc

let help_message* = """Help Message Coming Soon"""

if os.paramCount() < 1:
  stdout.styledWriteLine(fgRed, "ERROR: ", fgWhite, "You need too have at least 2 arguments\nUsage: cc <command> <string-to-search-for>")
  quit 1
elif os.paramStr(1) == "--help" or os.paramStr(1) == "-h":
  echo help_message
  quit 0
elif os.paramCount() < 2:
  stdout.styledWriteLine(fgRed, "ERROR: ", fgWhite, "You need too have at least 2 arguments\nUsage: cc <command> <string-to-search-for>")
  quit 1

let command = os.paramStr(1)
let search_string = os.paramStr(2) 
let execCmd = osproc.execCmdEx(command)

if execCmd[1] == 1:
  stdout.styledWriteLine(fgRed, "ERROR: ", fgWhite, "The entered command returned with errors")
  quit 1
elif search_string.strip() in execCmd[0]:
  echo "true"
else: 
  echo "false"

