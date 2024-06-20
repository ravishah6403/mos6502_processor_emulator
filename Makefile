run: libmos6502.so emulator a1basic.bin wozmon.bin
	LD_LIBRARY_PATH=. ./emulator

clean:
	rm -f emulator libmos6502.so *.bin

emulator: main.cpp ./src/loadfile.c
	g++ $^ -L. -lmos6502 -o $@

libmos6502.so: ./src/mos6502.cpp
	gcc -shared -fPIC $^ -o $@

%.bin: %.s
	../vbcc/bin/vasm6502_oldstyle $^ -Fbin -dotdir -o $@
