BUILD_DIRS=build.*

all: system

system:
	env PATH=$(PWD)/mybin:$(PATH) \
	./scripts/image

release:
	env PATH=$(PWD)/mybin:$(PATH) \
	./scripts/image release

clean:
	rm -rf $(BUILD_DIRS)/* $(BUILD_DIRS)/.stamps

src-pkg:
	tar cvjf sources.tar.bz2 sources .stamps
