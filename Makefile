INC=src include
LIB=lib
BLD=_build

INC_PARAMS=$(foreach d, $(INC), -I$d)
LIB_PARAMS=$(foreach d, $(LIB), -L$d)

.PHONY: clean all 
.DEFAULT: all

clean: 
	rm -rf bin 
	rm -rf $(BLD)

OBJ_NAMES=	ppp_cs.o \
						ppp_add.o \
						ppp_dotproduct.o \
						ppp_gaty.o \
						conjugate_gradient.o


OBJS=$(foreach d, $(OBJ_NAMES), $(BLD)/$d)

builddir:
	mkdir -p $(BLD)
bindir:
	mkdir -p bin

$(BLD)/%.o: src/%.c  builddir
	gcc -c $(TARGET_CFLAGS) $(CFLAGS) $(INC_PARAMS) $< -o $@ 

$(BLD)/%.o: tests/%.c  builddir
	gcc -c $(TARGET_CFLAGS) $(CFLAGS) $(INC_PARAMS) $< -o $@ 
	
bin/test_ppp_add: $(OBJS) $(BLD)/test_ppp_add.o bindir
	gcc -o $@$(BIN_SUFFIX) $(OBJS) $(BLD)/test_ppp_add.o $(CFLAGS) $(TARGET_CFLAGS) -static -lcsparse $(LIB_PARAMS) $(INC_PARAMS)
bin/test_ppp_dotproduct: $(OBJS) $(BLD)/test_ppp_dotproduct.o bindir
	gcc -o $@$(BIN_SUFFIX) $(OBJS) $(BLD)/test_ppp_dotproduct.o $(CFLAGS) $(TARGET_CFLAGS) -static -lcsparse $(LIB_PARAMS) $(INC_PARAMS)
bin/test_ppp_gaty: $(OBJS) $(BLD)/test_ppp_gaty.o bindir
	gcc -o $@$(BIN_SUFFIX) $(OBJS) $(BLD)/test_ppp_gaty.o $(CFLAGS) $(TARGET_CFLAGS) -static -lcsparse $(LIB_PARAMS) $(INC_PARAMS)
bin/test_conjugate_gradient: $(OBJS) $(BLD)/test_conjugate_gradient.o bindir
	gcc -o $@$(BIN_SUFFIX) $(OBJS) $(BLD)/test_conjugate_gradient.o $(CFLAGS) $(TARGET_CFLAGS) -static -lcsparse $(LIB_PARAMS) $(INC_PARAMS)

scattergather: TARGET_CFLAGS=-DPPP_SCATTER_GATHER
twopointers: TARGET_CFLAGS=-DPPP_TWO_POINTERS
scattergather: BIN_SUFFIX=sg
twopointers: BIN_SUFFIX=tp
scattergather twopointers: bin/test_ppp_add bin/test_ppp_dotproduct bin/test_ppp_gaty bin/test_conjugate_gradient
all: scattergather twopointers
