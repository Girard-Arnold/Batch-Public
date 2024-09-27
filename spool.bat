@echo===================================================================

@echo Ce programme sert a resoudre les problemes d'imprimante en erreur.
@echo Il arrete les services d'impressions, vide le spool et relance le spool.
@echo A utiliser en connaissance de cause.
@echo===================================================================


net stop spooler
del c:\WINDOWS\System32\spool\PRINTERS\*.* /q /f
sc Config spooler depend= RPCSS
net start spooler

pause 