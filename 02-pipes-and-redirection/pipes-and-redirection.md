# Pipes and Redirection

So far, we've been running commands one at a time. But Bash becomes powerful when you start chaining commands together.

---

### Pipes (`|`)

A pipe takes the output of one command and sends it as input to another.

```
$ command1 | command2
```

Here command1 produces an output. Then command2 uses that output

Example:

```
$ ls | wc -l
7
```

`ls` lists files, then `wc -l` counts lines. returns the amount of files in the directory.


Another Example:

```
$ cat transcript.txt | grep "bob"
bob: Do you want to trade?
bob: Wow I can't believe all my robux are gone.
```

`cat` prints the file and `grep` filters lines containing "bob"


---

### Redirection (`>` and `>>`)

Instead of printing output to the terminal, you can send it to a file.

##### Overwrite (`>`)

```
$ echo "Hello World" > hello.txt
```

Creates `hello.txt` (or overwrites it), then writes "Hello World" into it.


##### Append (`>>`)

```
$ echo "Another line" >> hello.txt
```

Adds to the file instead of overwriting


### Input Redirection (`<`)


You can also send a file as input to a command.

Example:
```
$ wc -l < names.txt

```

Counts lines in `names.txt`

---

### Combining Everything

You can mix pipes and redirection together.

```
$ cat names.txt | grep "bob" > filtered.txt
```

Output contents of the file. Next, filter lines with "bob". Finally, save result to `filtered.txt`


