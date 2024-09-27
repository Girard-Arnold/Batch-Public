@ECHO OFF
ECHO Liste des configurations cartes reseaux
ipconfig /all
ECHO ________________________________________________
ECHO Liste des controleurs de domaines
DSQUERY Server -o rdn
ECHO ________________________________________________
ECHO Synchronisation des controleurs de domaines
repadmin /syncall /APed
ECHO ________________________________________________
ECHO Calcul de la topologie
repadmin /kcc *
ECHO ________________________________________________
ECHO Verification des backups entre DCs
Repadmin /showbackup *
ECHO ________________________________________________
ECHO Verification de la replication sur tous les DCs 
Repadmin /showrepl *
ECHO ________________________________________________
ECHO Liste des requetes en attente de reponse
Repadmin /queue *
ECHO ________________________________________________
ECHO Verification des replications
repadmin /replsummary
ECHO ________________________________________________
ECHO Verification des appels en attente de reponse de chaque DCs
repadmin /showoutcalls *
ECHO ________________________________________________
ECHo Liste des echecs de replication
repadmin /failcache *
ECHO ________________________________________________
ECHO Analyze des problemes sur les controleurs de domaine
dcdiag /c /e /v
ECHO ________________________________________________
ECHO Fin de script
PAUSE
EXIT