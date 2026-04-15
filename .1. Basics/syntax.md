# Bash Syntax

Bash being Turing complete means that Bash has variables, loops, and conditional statements, just like programing languages. Typically, this is used in a file called a shell script.

## Shebang Line 
First, at the start of every shell script is a shebang line, you may have seen it, it looks like so:

```#!/bin/bash```


### Variables 

Assignment: `name="Bob"`

Accessing: `$name`

Special Variables:
```
$0 <- Name of the script
$1,$2,...,$n <- Arguments passed into the script
$# <- Total number off arguments passed
$? <- Exit status of last command
$$ <- PID of the current process
```

There also exist sspecial global variables such as: `$PATH` (A variable that stores where programs can be found), `$HOME` (your home directory), `$SHELL` (Your current shell), and more!
