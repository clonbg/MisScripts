
#!/bin/bash --login
trizen -Syu --noconfirm --noedit
trizen -Rsn $(trizen -Qdtq) --noconfirm
trizen -Scc --noconfirm
echo "Problemas con las comprobaciones de integridad: "
echo "trizen --skipinteg paquete"
