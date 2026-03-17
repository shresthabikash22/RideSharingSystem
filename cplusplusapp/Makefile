CXX = g++
CXXFLAGS = -std=c++17 -Iinclude -Wall -Wextra
SRCDIR = src
OBJDIR = obj
BINDIR = bin
TARGET = $(BINDIR)/app

SOURCES = $(wildcard $(SRCDIR)/*.cpp)
OBJECTS = $(patsubst $(SRCDIR)/%.cpp,$(OBJDIR)/%.o,$(SOURCES))

.PHONY: all clean run

all: $(TARGET)

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(BINDIR):
	mkdir -p $(BINDIR)

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp | $(OBJDIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(TARGET): $(OBJECTS) | $(BINDIR)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $(TARGET)

run: all
	./$(TARGET)

clean:
	rm -rf $(OBJDIR) $(BINDIR)