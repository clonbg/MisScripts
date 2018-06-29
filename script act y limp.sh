
#!/bin/bash --login
trizen -Syu --noconfirm --noedit
sudo trizen -Rsn $(trizen -Qdtq) --noconfirm
sudo trizen -Scc --noconfirm
echo "Problemas con las comprobaciones de integridad: "
echo "yaourt --m-arg "--skipchecksums --skippgpcheck" -Syua"
