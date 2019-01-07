CC = g++
BUILDDIR = build

.PHONY: all clean

all: chapter01

pre-build: 
	mkdir -p $(BUILDDIR)

chapter%: pre-build
	$(CC) -o $(BUILDDIR)/$@ $@.cc

display.chapter%: chapter%
	./$(BUILDDIR)/$^ | display

clean:
	rm -rf $(BUILDDIR)/*