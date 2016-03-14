
#===============================================================================
# export variable
#===============================================================================
include $(SDK_DIR)/base.mak
include $(SAMPLE_DIR)/base.mak
 
#===============================================================================
# local variable
#===============================================================================
CFLAGS += $(CFG_HI_SAMPLE_CFLAGS)

LIB = -Wl,--start-group $(SYS_LIBS) $(HI_LIBS) -Wl,--end-group 

APP 	:= sample_localplay 
OBJS    := sample_localplay.o $(COMMON_FILES)

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(APP)

$(APP): $(OBJS) #sample_localplay.c play_m3u9.c $(DRM_FILES) $(COMMON_FILES)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBPATH) $(LIB) 
	
	
	