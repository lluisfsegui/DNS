$TTL    604800
@       IN      SOA     ns1.isitech.com. admin.isitech.com. (
                        2025120402 ; Serial
                        604800     ; Refresh
                        86400      ; Retry
                        2419200    ; Expire
                        604800 )   ; Negative Cache TTL
;
@       IN      NS      ns1.isitech.com.
@       IN      A       10.18.30.34      
ns1     IN      A       10.18.30.34      
www     IN      A       10.18.30.35
mail    IN      A       10.18.30.36
@       IN      MX 10   mail.isitech.com.
