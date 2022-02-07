# Makefile
#
# shellspec: https://shellspec.info/
#
default: help

SHELLSPEC = "${HOME}/.local/bin/shellspec"

help:
	@echo "help..."

test: test/shellspec

test/shellspec:
	# install `shellspec` command if not found
	@if ! command -v $(SHELLSPEC) &> /dev/null; then \
		cd /tmp \
		&& curl -fsSL https://github.com/shellspec/shellspec/archive/0.28.1.tar.gz --output shellspec-0.28.1.tar.gz \
		&& tar xzvf shellspec-0.28.1.tar.gz \
		&& ln -s /tmp/shellspec-0.28.1/shellspec $(SHELLSPEC); \
	fi

.PHONY: test test/shellspec
