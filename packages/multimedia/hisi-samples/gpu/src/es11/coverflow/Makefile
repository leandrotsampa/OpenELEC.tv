

#===============================================================================
# local variable
#===============================================================================  

APP = coverflow

SRC = $(wildcard *.c) 
OBJ = $(patsubst %.c,%.o,$(SRC))

OTHERSRC = $(COMMON_FILES) 
OTHERSRC += ../../common/egl/src/hi_egl.c \
            ../../common/egl/src/egl_native.c \
            ../../common/key/src/hi_engine_key.c \
	    	../../common/key/src/hi_ir_remote.c 
	                            
OBJ2 = $(patsubst %.c,%.o,$(OTHERSRC))
	
#===============================================================================
# rules
#===============================================================================

all: $(APP) 

$(APP): $(OBJ2) $(OBJ) 
	$(CC) -o $@ $^ $(CFG_INC) $(LIBPATH) $(LIB) $(LOCALLIB)
 
$(OBJ): %.o: %.c 
	$(CC) -c  $^ -o $@ $(CFG_INC) 
 
$(OBJ2): %.o: %.c 
	$(CC) -c $^ -o $@ $(CFG_INC)
		
 