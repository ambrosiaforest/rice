all:
	git clone https://github.com/ambrosiaforest/dwm
	git clone https://github.com/ambrosiaforest/st
	git clone https://github.com/ambrosiaforest/slock
	git clone https://github.com/ambrosiaforest/dmenu
	chmod +x ./bar
	cp ./xinitrc $(HOME)/.xinitrc
	cp ./zshrc $(HOME)/.zshrc
	mkdir -p $(HOME)/.cache/zsh
	touch $(HOME)/.cache/zsh/history
	mkdir -p $(HOME)/.local/share/fonts
	cp ./undefined-medium.ttf $(HOME)/.local/share/fonts
	mkdir -p $(HOME)/.config/picom
	cp ./picom.conf $(HOME)/.config/picom/
install:
	$(MAKE) -C st install
	$(MAKE) -C dwm install
	$(MAKE) -C dmenu install
	$(MAKE) -C slock install
	cp ./bar /usr/local/bin/
