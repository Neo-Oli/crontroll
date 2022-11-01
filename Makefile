crontroll:

install: crontroll
	sed -e '1s|#!.*/bash|#!$(shell which bash)|' \
		crontroll > $(PREFIX)/bin/crontroll
		chmod +x $(PREFIX)/bin/crontroll

uninstall:
	rm -f $(PREFIX)/bin/crontroll

lint:
	npx --package=prettier-plugin-sh prettier --write crontroll

.PHONY: install uninstall lint
