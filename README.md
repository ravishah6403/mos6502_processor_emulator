# 6502 Processor Emulator with Apple 1
This is a simple 6502 Processor Emulator with Apple 1

This requires vasm6502_oldstyle to be installed, get it from [here](http://www.compilers.de/vasm.html)

Run it by executing
```make```

This will open a terminal with Wozmon
```\```

Test program
```
0:A9 0 AA 20 EF FF E8 8A 4C 2 0
0
R
```

Run BASIC using
```E000R```

To exit BASIC run
```CALL -256```

BASIC test program
```
10 PRINT "HELLO WORLD"
20 GOTO 10
RUN
```
