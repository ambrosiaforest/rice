all:
	git clone https://github.com/ambrosiaforest/dwm
	git clone https://github.com/ambrosiaforest/st
	git clone https://github.com/ambrosiaforest/slock
	chmod +x ./bar
	cp ./xinitrc $(HOME)/.xinitrc
	cp ./zshrc $(HOME)/.zshrc
	mkdir -p $(HOME)/.cache/zsh
	touch $(HOME)/.cache/zsh/history
	[ ! -d $(HOME)/.local/share/fonts ] && mkdir -p $(HOME)/.local/share/fonts
	cp ./undefined-medium.ttf $(HOME)/.local/share/fonts
	#git clone https://github.com/zdharma-continuum/fast-syntax-highlighting $(HOME)/.local/share/fast-syntax-highlighting
install:
	$(MAKE) -C st install
	$(MAKE) -C dwm install
	$(MAKE) -C slock install
	cp ./bar /usr/local/bin/
