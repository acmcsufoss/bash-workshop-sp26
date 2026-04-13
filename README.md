# Bash Workshop

_Open Source - Spring 2026_

![GNU Bash logo](./assets/gnu-bash-logo.svg.png)

# What is Bash?

## History

First before answering that, you must know the shell has a pretty extensive
history! The first UNIX shell that was significant was the Borune Shell, by
Stephen Bourn. Based off the esoteric langauge `Algol`, It did its job in
automation well, but lacked many features like interactive use (couldn't move
your cursor around), No history, and weak job control meaning you had to wait or
kill the process, suspending did not exist.

Next came the `C Shell` by Bill Joy (yes thats his name), and it fixed many of
the issues mentioned above such as interactivity and history.

Now with the `C Shell` and `sh` users were debaiting what shell to use, then
came along David Korn of AT&T who created the `Korn Shell`, it released in 1986.
Being fast and efficient, providing many features of the `C Shell` and
`Bourn Shell`, as well as basically running anywhere at the time (UNIX/Linux,
OS/2, VMS, and DOS), there was no debate which shell to use, it was the best. It
quickly became part of the official UNIX distribution.

However, my open sourcerers, you may notice that the `Korn Shell` is tied to
AT&T. This ended up meaning that `Korn` came with a license that was dificult to
work with.

With the Free Software Movement starting to take off in the late 1980's after
being launched by Richard Stallman's GNU Project, GNU was looking to create a
free and powerful shell to use. GNU's `Bourn Againe Shell (BASH)` was a shell
created by Brian Fox of the Free Software Foundation in 1988. It took the best
of both worlds of `Korn` and `Bourne` Shell and added onto that, introducing
cool features such as environmental variables, command completion, and regular
expressions. It became widly addapted with Linux and is still used to this day!

---

## Functional Purpose

Bash is used to command the operating system and run automated tasks. While it
is Turing complete it will get in your way when trying to do more complex things
such as GUI work. So why use it over just a regular programming language like
python?

Simply put, bash was meant to automate tasks in the operating system. It can
directly interact with the hardware, and with piping, a single line of Bash can
equate to 20 lines of python.

What type of automation work does Bash deal with in the real world? Bash is VERY
frequently used in the world of CI/CD and DevOps in general to automate
deployment, logging, massive file manipulation, and more!

---
