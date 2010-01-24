#
# Ole Troan, ot@cisco.com
# August 2009

REVISION=05
DRAFT=draft-ietf-v6ops-ipv6-cpe-router.txt 

#DRAFT=draft-ietf-v6ops-ipv6-cpe-router-02.txt \
#      draft-ietf-v6ops-ipv6-cpe-router-03.txt \
#      draft-ietf-v6ops-ipv6-cpe-router-04.txt \
#      draft-ietf-v6ops-ipv6-cpe-router-05.txt \
#      draft-ietf-v6ops-ipv6-advanced-cpe-router-00.txt \
#      draft-wbeebee-v6ops-ipv6-cpe-router-bis-01.txt \
#      draft-donley-ipv6-cpe-rtr-use-cases-and-reqs-00.txt \

XML2RFC=./xml2rfc/xml2rfc.tcl

# General rule to "compile" an XML file
%.txt:	%.xml
	$(XML2RFC) $< $*-$(REVISION).txt

draft: $(DRAFT)

.PHONY: clean draft commit
clean:
	/bin/rm -f *.txt

all:	draft



