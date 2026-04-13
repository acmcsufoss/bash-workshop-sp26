# Bash Workshop

_Open Source - Spring 2026_

![GNU Bash logo](./assets/gnu-bash-logo.svg.png)

> [!IMPORTANT]
> This workshop is intended to be done inside a terminal.

# What is Bash?

## History

First before answering that, you must know the shell has a pretty extensive
history! The first UNIX shell that was significant was the Bourne Shell, by
Stephen Bourne. It did its job in automation well, but lacked many features like
interactive use (couldn't line edit), No history, and weak job control meaning
you had to wait for or kill processes.

Next came the `C Shell` by Bill Joy (yes that's his name). It introduced
interactivity and history to the world of UNIX shells. However `csh` was weak
when it came to scripting.

Now with the `C Shell` and `sh` users were debating what shell to use, then came
along David Korn of AT&T who created the `Korn Shell`, it released in 1986. It
was fast and efficient, providing many features of the `C Shell` and
`Bourne Shell`. Finally it was able to run on a wide variety of operating
systems that were popular at the time (UNIX/Linux, OS/2, VMS, and DOS). These
qualities caused `ksh` to quickly became part of the official UNIX distribution.

However you may notice that the `Korn Shell` is tied to AT&T. This ended up
meaning that `Korn` came with a license that was difficult to work with.

With the Free Software Movement starting to take off in the late 1980's after
being launched by Richard Stallman's GNU Project, GNU was looking to create a
free and powerful shell to use. GNU's `Bourne Again Shell (BASH)` was a shell
created by Brian Fox of the Free Software Foundation in 1988. It took the best
of both worlds of `Korn` and `Bourne` Shell and added onto that, introducing
cool features such as command completion. It became widely adopted with Linux
and is still used to this day!

---

## Functional Purpose

Bash is used to command the operating system and run automated tasks. While it
is Turing complete it is not ideal for tasks like making a GUI program. So why
use it over just a regular programming language like Python?

Bash was meant to be a glue that automate tasks in the operating system. Bash
composes a bunch of tools together, making orchestration very easy and very
fast.

What type of automation work does Bash deal with in the real world? Bash is VERY
frequently used in the world of CI/CD and DevOps in general to automate
deployment, logging, massive file manipulation, and more!

TLDR: Bash is a glue that glues together programs and tools.

---

## Let's begin!

To start, use `cat` to read `basic_commands.md`. (Maybe use `clear` first to
clean your terminal)
