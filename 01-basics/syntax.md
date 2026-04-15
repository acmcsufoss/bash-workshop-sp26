# Bash Syntax

Bash has variables, loops, and conditional statements, just like programing languages. Typically, this is used in a file called a shell script.

## The Script 
First, at the start of every shell script is a shebang line, you may have seen it, it looks like so:


```#!/usr/bin/env bash``` or ```#!/bin/bash``` 

`#!/bin/bash` is the most common. However, `#!/usr/bin/env bash` is more portable. 

Next type in what you want the script to do, we can just write `echo "Hello World!"` for now.

Now you should have something like this:
<small>first.sh</small>
```
#!/bin/bash
# OR
#!/usr/bin/env bash
# But not both!

echo "Hello World"
```

Now we need the operating system to give it permision to execute. We can use `chmod +x` for this. 

`$ chmod +x first.sh`

Now run your script!

`$ ./first.sh`

Out:
`$ Hello World`

(note: $ means shell prompt, on your device it by default it look like User@OperatingSystem:)


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
#!/bin/bash

if [ condition ]; then
    # Do something
fi

# Or

if [[ condition ]]; then
    # Do something
fi
```

##### Whats the difference?

Single [] is POSIX compliant (works with any bourne based shells). It's older, more portable but more fragile.

Double [[]] is not as portable, however it offers a lot of qaulity of life features like supporting wildcards and regex. Generally it's safer to use and you get less suprises with this one.

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
#!/bin/bash
cookies=5
if [[ $cookies -gt 1 ]]; then
    echo "I have" $cookies "cookies for my friends!"
fi
```
Out:
```
$ ./cookies.sh
I have 5 cookies for my friends!
```

##### String Conditions

For strings there are the clasic operations `==` and `!=`. 

There also exists < and > for compairing lexicographical order.

Example:
```
#!/bin/bash

# Pass in name argument when calling the script like "./name.sh evan"
name=$1

if [[ $name == "evan" ]]; then
    echo "Hello Open Source Team Lead"
fi
```

##### More

There are sooo many cool conditions you can do in Bash but we do not have time to look at all of them. If you are intrested though, go ahead and take a look at [`The Linux Documentation Project's` bash guide here!](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html)


---

### Loops

##### For Loop

Probably your most useful loop in bash, you iterate through a list of elements.

Example:
```
#!/bin/bash

for fruit in Apple Orange Pear 
do
    echo $fruit
done
```
Out:
```
$ ./fruits.sh
Apple
Orange
Pear
```

### Important to Note:
YOU CAN USE THIS WITH COMMAND OUTPUTS
Example:
```
#!/bin/bash

# Ideally use * instead of $(ls) since $(ls) doesn't work for files that have space in the name
# Just for educational purposes:
for file in $(ls)
do
    if [[ $file == "main.go" ]]; then
        echo "main.go is in this directory"
        exit
    fi
done

echo "main.go is not in this directory"
```

##### Over a Range  

Similar to above but instead of a list of elements, you use the syntax {START..END}.

Example:
```
#!/bin/bash

for i in {1..5}
do
    echo $i
done
```
Out:
```
$ ./nums.sh
1
2
3
4
5
```
