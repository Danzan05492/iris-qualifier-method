.PHONY: install build

build:
	pex . --entry-point method --requirement requirements.txt --output-file target/iris-qualifier-method

install:
	mkdir --parents /usr/local/bin
	cp --force target/iris-qualifier-method /usr/local/bin
	chmod 755 /usr/local/bin/iris-qualifier-method
