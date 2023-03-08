from strutils import strip

let content:string = readFile("input.txt").strip()
var num:int

for i in 0 .. content.len - 1:
  case content[i]:
  of '(':
    num += 1
  of ')':
    num -= 1
  else:
    break

echo num