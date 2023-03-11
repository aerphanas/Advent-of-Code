from strutils import strip, splitLines, split, parseInt
from algorithm import sort

const
  content:string = readFile("input.txt").strip()
  input: seq[string] = content.splitLines()

var
  result:int

for i in 0 .. input.len - 1:
  var
    ins: seq[string] = input[i].split "x"
    inputNum: seq[int]

  # change input from string to int for sort
  for i in 0 .. ins.len - 1:
    inputNum.add(ins[i].parseInt)

  inputNum.sort

  let
    l: int = inputNum[0]
    w: int = inputNum[1]
    h: int = inputNum[2]
    ribon: int = 2 * (l + w)
    bow: int = l * w * h
  result += ribon + bow

echo result