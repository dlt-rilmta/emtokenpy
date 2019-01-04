all: quntoken/
.PHONY: all


quntoken/: quntoken.tar.gz
	@echo 'Unpack quntoken.'
	@tar -xzf $^
	@rm -f $^
	@echo -e 'Done.\n'


quntoken.tar.gz:
	@echo 'Download quntoken.'
	@wget -q https://github.com/dlt-rilmta/quntoken/releases/download/v2.2.0/quntoken_Linux_x86_64_v2.2.0.tar.gz -O $@
	@echo -e 'Done.\n'


clean:
	@rm -rf quntoken/
	@rm -rf __pycache__/
.PHONY: clean