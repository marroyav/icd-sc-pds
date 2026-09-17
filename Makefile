TECTONIC ?= tectonic

.PHONY: all check
all: main.pdf

main.pdf: main.tex cernatlasnote.cls $(wildcard sections/*.tex) $(wildcard images/*)
	$(TECTONIC) --keep-logs main.tex

check: main.pdf
	git diff --check -- . ':!cernatlasnote.cls'
	git diff --cached --check -- . ':!cernatlasnote.cls'
