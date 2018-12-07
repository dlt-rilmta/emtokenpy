all: quntoken/
.PHONY: all


quntoken/: quntoken.tar.gz
	@echo 'Unpack quntoken.'
	@tar -xzf $^
	@rm -f $^
	@echo -e 'Done.\n'


quntoken.tar.gz:
	@echo 'Download quntoken.'
	@wget -q https://github.com/dlt-rilmta/quntoken/releases/download/2.1.0/quntoken_Linux_x86_64_v2.1.0.tar.gz -O $@
	@echo -e 'Done.\n'
