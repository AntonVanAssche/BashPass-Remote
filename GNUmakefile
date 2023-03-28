BIN = /usr/bin
MAN_DIR = /usr/share/man/man1
SUDO := sudo
OS := $(shell uname -s)

# Check if the operating system is Linux
ifeq ($(OS),Linux)
	BIN = /usr/bin
	MAN_DIR = /usr/share/man/man1
endif

# Check if the operating system is Mac OS X
ifeq ($(OS),Darwin)
	BIN = /usr/local/bin
	MAN_DIR = /usr/local/share/man/man1
endif

all:
	@echo Run \'make install\' to install BashPass-Remote.
	@echo Run \'make update\' to update BashPass-Remote.
	@echo Run \'make uninstall\' to uninstall BashPass-Remote.

install:
	@echo Installing BashPass-Remote...
	@$(SUDO) install -v -m755 bashpass-remote $(BIN)
	@$(SUDO) install -v -m644 docs/bashpass-remote.1.gz $(MAN_DIR)
	@echo BashPass-Remote installed successfully!

update:
	@echo Updating BashPass-Remote...
	@$(SUDO) install -v -m755 bashpass-remote $(BIN)
	@$(SUDO) install -v -m644 docs/bashpass-remote.1.gz $(MAN_DIR)
	@echo BashPass-Remote updated successfully!

uninstall:
	@echo Uninstalling BashPass-Remote...
	@$(SUDO) rm -vf $(BIN)/bashpass-remote
	@$(SUDO) rm -vf $(MAN_DIR)/bashpass-remote.1.gz
	@echo BashPass-Remote uninstalled successfully!
	@echo Bye, have a nice day!
