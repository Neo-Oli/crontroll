crontroll:

install: crontroll
		cp crontroll $(PREFIX)/bin/crontroll
		chmod +x $(PREFIX)/bin/crontroll

uninstall:
	rm -f $(PREFIX)/bin/crontroll

lint:
	pnpm install
	pnpm prettier --write crontroll

.PHONY: install uninstall lint
