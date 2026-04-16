# Basic Bash

Lets start with the basics, there are a few bash commands that should are
extremely common in terminal use these being:

`cat` Concatenate: Outputs the contents of the file into your terminal. You are
using `cat` to view this text right now!

`ls` List: Displays the contents of a directory. By default the directory is the
one you are in, but you can specify which directory to check.

`cd` Change Directory: This changes the directory (or what you may know as a
folder) you currently are in.

`pwd` Print Working Directory: Prints out the current directory you are in.

`curl` Client URL: This allows you to retrieve data from the internet.

`man` Manual: This pulls up a manual of a command you want to use. You can try
it with any of the commands listed above! For example: `man curl`

---

## Flags

Now some of these commands come with flags. Flags modify the behavior of the
command, for example `ls -l` gives you a more detailed look at the files in your
directory.

If there is a flag you need to keep in your heart, it will be `--help`. Most
tools will have this flag and it explains what the tool and its flags do.

---

## Moving On

Now it is time to move on, lets change directories into the directory named
basics. We can use `ls` to look for `1. Basics`.

Wait a minute. `ls` is not listing the directory? How can we get `ls` to list all
hidden files? Let's use `ls --help` to get a flag that can 
display all files in this directory.
