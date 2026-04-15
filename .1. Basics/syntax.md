# Bash Syntax

Bash being Turing complete means that Bash has variables, loops, and conditional statements, just like programing languages. Typically, this is used in a file called a shell script.

## Shebang Line 
First, at the start of every shell script is a shebang line, you may have seen it, it looks like so:

```#!/bin/bash```

---

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

---

### Conditionals

Written as so:

```
if [ condition ]; then
    # Do something
fi

# Or

if [[ condition ]; then
    # Do something
fi
```

##### Whats the difference?

Single [] is POSIX compliant (works with any bourne based shells).

Double [[]] is not as portable, however it offers a lot of qaulity of life features like taking care of whitespaces, supporting wildcards and regex, etc. Generally you also get less suprises with this one.

##### Arthimitic Conditions

When compairing numbers, we use the following flags: -eq -ne, -lt, -le, -gt or -ge. 

`-eq`: Equal
`-ne`: Not Equal
`-lt`: Less Than
`-le`: Less Than or Equal
`-gt`: Greater Than
`-ge`: Greater Than or Equal

Example:
```
cookies=5
if [ cookies -gt 1 ]; then
    echo "I have" cookies "cookies for my friends!"
fi
```

##### String Conditions

For strings there are the clasic operations `==` and `!=`. 

There also exists < and > for compairing lexicographical order.

##### More

There are sooo many cool conditions you can do in Bash but we do not have time to look at all of them. If you are intrested though, go ahead and take a look at [`The Linux Documentation Project's` bash guide here!](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html)



