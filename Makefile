build:
	makepkg .

clean:
	rm -rf src pkg wldash dotdesktop *.pkg.tar.xz

install:
	sudo pacman -U *.pkg.tar.xz

rebuild: clean build
