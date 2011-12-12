#
# Ole Troan, ot@cisco.com
# April 2009

all:	drafts

XML2RFC=./xml2rfc/xml2rfc.tcl

draft-ietf-v6ops-ipv6-cpe-router-bis-split: draft-ietf-v6ops-ipv6-cpe-router-bis-split.xml
	$(XML2RFC) $< $@-00.txt

draft-ietf-homenet-ipv6-cpe-router-bis: draft-ietf-homenet-ipv6-cpe-router-bis.xml
	$(XML2RFC) $< $@-00.txt

draft-ietf-v6ops-6204bis: draft-ietf-v6ops-6204bis.xml
	$(XML2RFC) $< $@-00.txt

draft-townsley-troan-ipv6-ce-transitioning: draft-townsley-troan-ipv6-ce-transitioning.xml
	$(XML2RFC) $< $@-01.txt

.PHONY: clean draft commit
clean:
	/bin/rm -f *.txt


drafts: draft-townsley-troan-ipv6-ce-transitioning

# draft-ietf-v6ops-6204bis \
#	draft-ietf-v6ops-ipv6-cpe-router-bis-split \
#	draft-ietf-homenet-ipv6-cpe-router-bis



