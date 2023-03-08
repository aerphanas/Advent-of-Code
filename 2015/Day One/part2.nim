from strutils import strip

let content:string = readFile("input.txt").strip()
var
  num:int = 0
  res: seq[int]

for i in 0..content.len - 1:
  if num == -1:
    res.add(i)
  case content[i]:
  of '(':
    num += 1
  of ')':
    num -= 1
  else:
    break

echo res[0]