all:
	mkdir -p $(HOME)/.cache/zsh
	mkdir -p $(HOME)/.local/share/fonts
	mkdir -p $(HOME)/.config/picom
	mkdir -p $(HOME)/.local/bin/
	touch $(HOME)/.cache/zsh/history
	cp ./undefined-medium.ttf $(HOME)/.local/share/fonts
	cp ./config/picom.conf $(HOME)/.config/picom/
	cp ./config/xinitrc $(HOME)/.xinitrc
	cp ./config/zshrc $(HOME)/.zshrc
	cp ./scripts/bar $(HOME)/.local/bin/
	cp ./scripts/screenshot $(HOME)/.local/bin/
install:
	$(MAKE) -C suckless/st install
	$(MAKE) -C suckless/dwm install
	$(MAKE) -C suckless/dmenu install
	$(MAKE) -C suckless/slock install
