
PROJECT_ROOT=.

all::debug release

#########################################################
# Debug version
#########################################################

OUTPUT_DIR_DEBUG=$(PROJECT_ROOT)/output/debug
OUTLIB_DIR_DEBUG=$(PROJECT_ROOT)/output/debug

$(OUTLIB_DIR_DEBUG)/libsme.a:
	make -C sme debug

TARGETS_DEBUG=$(OUTLIB_DIR_DEBUG)/libsme.a \
	      

#########################################################
# Release version
#########################################################

OUTPUT_DIR_RELEASE=$(PROJECT_ROOT)/output/release
OUTLIB_DIR_RELEASE=$(PROJECT_ROOT)/output/release

$(OUTLIB_DIR_RELEASE)/libsme.a:
	make -C sme release

TARGETS_RELEASE=$(OUTLIB_DIR_DEBUG)/libsme.a


#########################################################
# Misc targets
#########################################################

debug::$(TARGETS_DEBUG) 
release::$(TARGETS_RELEASE) 

clean::
	make -C sme clean

