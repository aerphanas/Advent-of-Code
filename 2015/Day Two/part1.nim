import strutils

let
  content:string = readFile("input.txt").strip()
  input = content.splitLines()

var
  result:int

for i in 0..input.len - 1:
  let
    ins: seq[string] = input[i].split("x")
    l: int = ins[0].parseInt
    w: int = ins[1].parseInt
    h: int = ins[2].parseInt
    mint: seq[int] = @[(l * w), (w * h), (h * l)]
  result += (2 * (l * w)) + (2 * (w * h)) + (2 * (h * l)) + mint.min
echo result
