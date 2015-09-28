#!/bin/sh
cat <<PROB
Given an input file containing a rectangular block of dot
characters ('.') and two or more hash characters ('#'), write a
program called 'pather' that writes to an output file the same
block of dot characters, but with the '#' characters connected
by asterisks ('*'). The pather program may be written in any language.

The command will be invoked like this:

  pather input.txt output.txt

The rules for the path:

* No diagonals.
* Only change direction once per pair of '#' characters.
* Start with a vertical line and then complete with a horizontal line.

Please feel free to write further tests if you believe the program can be
improved upon. Have fun with it.

Hint: If you implement 'pather' in this directory, this script will run it
for you and test the accuracy of the output. The file 'pather' will need to
be executable (chmod +x pather).


PROB

cat <<INPUT >input.txt
........................
........................
....#...................
........................
........................
........................
........................
..................#.....
........................
........................
........................
........................
INPUT

cat <<EXPECTED >expected.txt
........................
........................
....#...................
....*...................
....*...................
....*...................
....*...................
....**************#.....
........................
........................
........................
........................
EXPECTED

cat <<EXPLAIN

Input:

`cat input.txt`

Expected Output:

`cat expected.txt`
EXPLAIN

if [ -x pather ]; then
  ./pather input.txt output.txt
else
  echo "PROBLEM: 'pather' does not exist in this directory or is not executable"
fi

cat <<CONCLUSION

Output:

`cat output.txt`

Diff:

`diff -u expected.txt output.txt`

CONCLUSION

cat <<INPUT >input-2.txt
........................
........................
....#.............#.....
........................
........................
........................
........................
........................
........................
........................
........................
........................
INPUT

cat <<EXPECTED >expected-2.txt
........................
........................
....#*************#.....
........................
........................
........................
........................
........................
........................
........................
........................
........................
EXPECTED

cat <<EXPLAIN

Input:

`cat input-2.txt`

Expected Output:

`cat expected-2.txt`
EXPLAIN

if [ -x pather ]; then
  ./pather input-2.txt output-2.txt
else
  echo "PROBLEM: 'pather' does not exist in this directory or is not executable"
fi

cat <<CONCLUSION

Output:

`cat output-2.txt`

Diff:

`diff -u expected-2.txt output-2.txt`

CONCLUSION

cat <<INPUT >input-3.txt
........................
........................
....#.............#.....
........................
........................
........................
........................
........................
............#...........
........................
........................
........................
INPUT

cat <<EXPECTED >expected-3.txt
........................
........................
....#*************#.....
..................*.....
..................*.....
..................*.....
..................*.....
..................*.....
............#******.....
........................
........................
........................
EXPECTED

cat <<EXPLAIN

Input:

`cat input-3.txt`

Expected Output:

`cat expected-3.txt`
EXPLAIN

if [ -x pather ]; then
  ./pather input-3.txt output-3.txt
else
  echo "PROBLEM: 'pather' does not exist in this directory or is not executable"
fi

cat <<CONCLUSION

Output:

`cat output-3.txt`

Diff:

`diff -u expected-3.txt output-3.txt`

CONCLUSION

cat <<INPUT >input-4.txt
........................
........................
....#.............#.....
........................
........................
........#...............
........................
........................
....#.......#...........
........................
........................
.....................#..
INPUT

cat <<EXPECTED >expected-4.txt
........................
........................
....#.......******#.....
....*.......*.....*.....
....*.......*.....*.....
....*...#**********.....
....*...*...*...........
....*...*...*...........
....#********...........
........*...............
........*...............
........*************#..
EXPECTED

cat <<EXPLAIN

Input:

`cat input-4.txt`

Expected Output:

`cat expected-4.txt`
EXPLAIN

if [ -x pather ]; then
  ./pather input-4.txt output-4.txt
else
  echo "PROBLEM: 'pather' does not exist in this directory or is not executable"
fi

cat <<CONCLUSION

Output:

`cat output-4.txt`

Diff:

`diff -u expected-4.txt output-4.txt`

CONCLUSION
