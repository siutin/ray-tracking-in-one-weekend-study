BUILDDIR = build

.PHONY: all clean

all: chapter01

pre-build: 
	mkdir -p $(BUILDDIR)

chapter01: pre-build
	g++ -o $(BUILDDIR)/chapter01 chapter01.cc

display.chapter01: chapter01
	./$(BUILDDIR)/chapter01 | display

clean:
	rm -rf $(BUILDDIR)/*