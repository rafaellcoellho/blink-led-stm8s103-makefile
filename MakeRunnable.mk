TARGET := blink_led
CC := sdcc
PROCESSOR := -mstm8

all: $(TARGET)

build/blink.rel: src/blink.c
	$(CC) -c $(PROCESSOR) src/blink.c -o build/

build/main.rel: src/main.c
	$(CC) -c $(PROCESSOR) src/main.c -o build/

$(TARGET): build/blink.rel build/main.rel
	$(CC) $(PROCESSOR) --out-fmt-ihx build/main.rel build/blink.rel

.PHONY: clean

clean:
	rm -f build/*.asm build/*.lst build/*.rel build/*.rst build/*.sym *.cdb *.ihx *.lk *.map
