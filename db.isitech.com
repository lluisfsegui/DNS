$TTL 604800
@       IN      SOA     ns01.isitech.com. admin.isitech.com. (
                        2025112701      ; Serial
                        604800          ; Refresh
                        86400           ; Retry
                        2419200         ; Expire
                        604800 )        ; Negative Cache TTL

; ---- Servidores de nombres ----
@       IN      NS      ns01.isitech.com.
@       IN      NS      ns02.isitech.com.

; ---- Registros MX ----
@       IN      MX 10   mail01.isitech.com.
@       IN      MX 10   mail02.isitech.com.

; ---- Registros A ----
ns01    IN      A       192.168.144.196
ns02    IN      A       192.168.144.197
mail01  IN      A       192.168.144.198
mail02  IN      A       192.168.144.199
web     IN      A       192.168.158.200
file    IN      A       192.168.158.201

; ---- Registros CNAME ----
www     IN      CNAME   web.isitech.com.
ftp     IN      CNAME   file.isitech.com.

; ---- Delegaci  n del subdominio ----
estacions       IN      NS      ns01.isitech.com.
estacions       IN      NS      ns02.isitech.com.
