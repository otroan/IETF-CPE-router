#
# Ole Troan, ot@cisco.com
# August 2009

DRAFT=draft-townsley-ipv6-6rd-01.txt
XML2RFC=./xml2rfc-1.34pre3/xml2rfc.tcl

# General rule to "compile" an XML file
%.txt:	%.xml
	$(XML2RFC) $<

draft: $(DRAFT)

.PHONY: clean draft commit
clean:
	/bin/rm -f *.txt

all:	draft



