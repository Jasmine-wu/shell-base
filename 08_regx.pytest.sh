import re
s="abdddd00989helloworld world"
pat = "wo"
comp = re.compile(pat)
#  match头部匹配
print(comp.match(s))
print(comp.search(s))
