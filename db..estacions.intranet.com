$TTL    604800
@       IN      SOA     ns1.estacions.intranet.com. admin.estacions.intranet.com. (
                        2025120402 ; Serial
                        604800     ; Refresh
                        86400      ; Retry
                        2419200    ; Expire
                        604800 )   ; Negative Cache TTL
;
@       IN      NS      ns1.estacions.intranet.com.
@       IN      A       10.18.30.40
ns1     IN      A       10.18.30.40
www     IN      A       10.18.30.41
ftp     IN      A       10.18.30.42
