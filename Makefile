all:
	mkdir -p $(HOME)/.cache/zsh
	mkdir -p $(HOME)/.local/share/fonts
	mkdir -p $(HOME)/.config/picom
	mkdir -p $(HOME)/.local/bin/
	mkdir -p $(HOME)/Pictures/wallpapers
	touch $(HOME)/.cache/zsh/history
	cp ./undefined-medium.ttf $(HOME)/.local/share/fonts
	cp ./config/xinitrc $(HOME)/.xinitrc
	cp ./config/vimrc $(HOME)/.vimrc
	cp ./config/zshrc $(HOME)/.zshrc
	cp ./config/picom $(HOME)/.config/picom/picom.conf
	cp ./scripts/bar $(HOME)/.local/bin/
	cp ./bg.jpg $(HOME)/Pictures/wallpapers/
install:
	$(MAKE) -C suckless/st install
	$(MAKE) -C suckless/dwm install
