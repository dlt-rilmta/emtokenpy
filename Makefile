VERSION = v2.3.1


all: quntoken/
.PHONY: all


quntoken/: quntoken.tar.gz
	@echo 'Unpack quntoken.'
	@tar -xzf $^
	@rm -f $^
	@echo -e 'Done.\n'


quntoken.tar.gz:
	@echo 'Download quntoken.'
	@wget -q https://github.com/dlt-rilmta/quntoken/releases/download/$(VERSION)/quntoken_Linux_x86_64_$(VERSION).tar.gz -O $@
	@echo -e 'Done.\n'


clean:
	@rm -rf quntoken/
	@rm -rf quntoken.tar.gz
	@rm -rf __pycache__/
.PHONY: clean

