all: runnable

runnable:
	make -f MakeRunnable.mk all

flash:
	stm8flash -c stlinkv2 -p stm8s103f3 -w main.ihx

clean:
	make -f MakeRunnable.mk clean
