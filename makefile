PROG := cp2d
TAG  := ctags

srcDir  := Src
testDir := Test

export PROG

.PHONY: all release debug test tags clean

all: debug

release debug:
	${MAKE} -C ${srcDir} $@

test: debug
	${MAKE} -C ${testDir}

tags:
	${TAG} -R ${srcDir}

clean:
	-rm ${PROG}
	-${MAKE} -C ${srcDir} $@
	-${MAKE} -C ${testDir} $@
