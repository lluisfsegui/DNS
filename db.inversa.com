$TTL    604800
@       IN      SOA     ns1.isitech.com. admin.isitech.com. (
                        2025120402 ; Serial
                        604800     ; Refresh
                        86400      ; Retry
                        2419200    ; Expire
                        604800 )   ; Negative Cache TTL
;
@       IN      NS      ns1.isitech.com.

34      IN      PTR     ns1.isitech.com.
35      IN      PTR     www.isitech.com.
36      IN      PTR     mail.isitech.com.

40      IN      PTR     ns1.estacions.intranet.com.
41      IN      PTR     www.estacions.intranet.com.
42      IN      PTR     ftp.estacions.intranet.com.
