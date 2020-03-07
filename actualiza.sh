
#!/bin/bash --login
sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
trizen -Syu --noconfirm --noedit
trizen -Rsn $(trizen -Qdtq) --noconfirm
trizen -Scc --noconfirm
echo "Problemas con las comprobaciones de integridad: "
echo "trizen --skipinteg paquete"
