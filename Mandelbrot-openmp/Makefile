CXX=g++
CXXFLAGS = -std=c++11 -fPIC -fopenmp

ifdef DEBUG
CXXFLAGS += -g -O0 -Wall -fbounds-check -pedantic -D_GLIBCXX_DEBUG
else
CXXFLAGS += -O3 -march=native -Wall
endif

ALL=Mandelbrot.exe Mandelbrot-openmp.exe 

default: help

all: $(ALL)

clean:
	@rm -fr *.o *.exe *~ *.tga

%.exe: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LIB)


help:
	@echo "Available targets: "
	@echo "    all      : compile all executables"
	@echo "Add DEBUG=yes to compile in debug"
	@echo "Configuration:"
	@echo "    CXX      :    $(CXX)"
	@echo "    CXXFLAGS :    $(CXXFLAGS)"
