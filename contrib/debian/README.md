
Debian
====================
This directory contains files used to package bitcoinfiatd/bitcoinfiat-qt
for Debian-based Linux systems. If you compile bitcoinfiatd/bitcoinfiat-qt yourself, there are some useful files here.

## bitcoinfiat: URI support ##


bitcoinfiat-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitcoinfiat-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitcoinfiat-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitcoinfiat128.png` to `/usr/share/pixmaps`

bitcoinfiat-qt.protocol (KDE)

