#
# Ole Troan, ot@cisco.com
# April 2009

all:	drafts

XML2RFC=./xml2rfc/xml2rfc.tcl

draft-ietf-v6ops-ipv6-cpe-router-bis: draft-ietf-v6ops-ipv6-cpe-router-bis.xml
	$(XML2RFC) $< $@-01.txt

.PHONY: clean draft commit
clean:
	/bin/rm -f *.txt


drafts: \
        draft-ietf-v6ops-ipv6-cpe-router-bis



