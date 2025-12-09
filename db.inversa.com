$TTL 60
@       IN      SOA     ns01.intranet.com. admin.intranet.com. (
                              2008052001    ; Serial
                              120           ; Refresh 2 minuts
                              60            ; Retry 1 minut
                              86400         ; Expire 1 dia
                              60 )          ; Negative Cache TTL

; ----- Nameservers -----
@       IN      NS      ns01.intranet.com.
@       IN      NS      ns02.intranet.com.

; ----- Registres PTR -----
163     IN      PTR     est01.estacions.intranet.com.
164     IN      PTR     est02.estacions.intranet.com.
165     IN      PTR     est03.estacions.intranet.com.
166     IN      PTR     est04.estacions.intranet.com.
167     IN      PTR     est05.estacions.intranet.com.
