VERSION = v2.3.2


all: quntoken/
.PHONY: all


quntoken/: emtokenpy/quntoken.tar.gz
	@echo 'Unpack quntoken.'
	@tar -xzf $^ -C emtokenpy/
	@rm -f $^
	@echo -e 'Done.\n'


emtokenpy/quntoken.tar.gz:
	@echo 'Download quntoken.'
	@wget -q https://github.com/dlt-rilmta/quntoken/releases/download/$(VERSION)/quntoken_Linux_x86_64_$(VERSION).tar.gz -O $@
	@echo -e 'Done.\n'


clean:
	@rm -rf emtokenpy/quntoken/
	@rm -rf emtokenpy/quntoken.tar.gz
	@rm -rf emtokenpy/__pycache__/
.PHONY: clean

