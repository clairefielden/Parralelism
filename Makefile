# Makefile for Parrallel Assignment
#Claire Fielden
#FLDCLA001
#20 August 2021

JAVAC=/usr/bin/javac
.SUFFIXES: .java .class
BINDIR = bin
SRCDIR = src

$(BINDIR)/%.class:$(SRCDIR)/%.java
	$(JAVAC) -d $(BINDIR)/ -cp $(SRCDIR) $<

CLASSES= fillArr.class ParrallelVersion.class
CLASS_FILES=$(CLASSES:%.class=$(BINDIR)/%.class)

default: $(CLASS_FILES)

clean:
	rm $(BINDIR)/*.class

runparr: $(CLASS_FILES)
	java -cp bin ParrallelVersion