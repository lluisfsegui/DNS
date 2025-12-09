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

; ----- Registres A -----
est01   IN      A       10.18.30.163
est02   IN      A       10.18.30.164
est03   IN      A       10.18.30.165
est04   IN      A       10.18.30.166
est05   IN      A       10.18.30.167
