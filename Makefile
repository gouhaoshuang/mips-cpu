
OBJS = full_adder half_adder mux4to1 \
	   full_add4 add4 \
	   full_add8 add8 \
	   full_add32 add32 \
	   oflow32 \
	   alu1 alu2 \
	   alu_tb

all: $(OBJS)

%: %.v
	iverilog -o$@ $<

alu_tb: alu1 alu2

alu2: full_add32

clean:
	-rm -f $(OBJS)