1. Count how many lines are in  beemovie.txt
```
$ cat beemovie.txt | wc -l 

Or without cat

$ wc -l < beemovie.txt

1363
```

2. Count how many lines contain the word  "Bee"
```
Make sure you search for Bee correctly! You might get lines with "Beep" if you do "Bee" no space
$ cat beemovie.txt | grep "Bee " | wc - l 

or

$ grep "Bee " < beemovie.txt | wc -l

6
```
3. Count how many lines contain the word  "bee"  (lowercase)
```
Same as above but with lowercase
$ cat beemovie.txt | grep "bee " | wc - l 

or

$ grep "bee " < beemovie.txt | wc -l

29
```
4. Find how many words are in the script
```
$ cat beemovie.txt | wc -w

or

wc -w < beemovie.txt

9157
```

Bonus:
```
$ cat beemovie.txt | grep -i "bee " 

35
```
