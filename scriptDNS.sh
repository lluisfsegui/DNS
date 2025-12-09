echo "=== Instal·lant Bind9 ==="
apt update && apt install -y bind9 bind9utils bind9-doc wget

echo "=== Creant carpeta de zones a /etc/bind/zones ==="
mkdir -p /etc/bind/zones

echo "=== Descarregant fitxers de configuració des de GitHub ==="

wget https://raw.githubusercontent.com/lluisfsegui/DNS/refs/heads/main/db.isitech.com -O /etc/bind/zones/db.isitech.com
wget https://raw.githubusercontent.com/lluisfsegui/DNS/refs/heads/main/db.estacions.intranet.com -O /etc/bind/zones/db.estacions.intranet.com
wget https://raw.githubusercontent.com/lluisfsegui/DNS/refs/heads/main/db.inversa.com -O /etc/bind/zones/db.30.18.10
wget https://raw.githubusercontent.com/lluisfsegui/DNS/refs/heads/main/named.conf.local -O /etc/bind/named.conf.local

echo "=== Comprovant sintaxi ==="
named-checkconf
named-checkzone isitech.com /etc/bind/zones/db.isitech.com
named-checkzone estacions.intranet.com /etc/bind/zones/db.estacions.intranet.com
named-checkzone 10.18.30.in-addr.arpa /etc/bind/zones/db.30.18.10

echo "=== Reiniciant Bind9 ==="
systemctl restart bind9
systemctl enable bind9
systemctl status bind9
