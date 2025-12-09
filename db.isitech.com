$TTL    604800
@       IN      SOA     ns01.Isitech.com. admin.Isitech.com. (
                              2         ; Serial
                              604800    ; Refresh
                              86400     ; Retry
                              2419200   ; Expire
                              604800 )  ; Negative Cache TTL

; ----- Noms dels servidors -----
@       IN      NS      ns01.Isitech.com.
@       IN      NS      ns02.Isitech.com.

; ----- Registres IPs -----
ns01    IN      A       192.168.144.196
ns02    IN      A       192.168.144.197
mail01  IN      A       192.168.144.198
mail02  IN      A       192.168.144.199
web     IN      A       192.168.158.200
file    IN      A       192.168.158.201

; Domini principal
@       IN      A       192.168.158.200
