@ECHO OFF
ECHO Creation du repertoire C:\GP
IF NOT EXIST C:\GP mkdir C:\GP
ECHO Reparation des fichiers Windows en cache
dism /online /cleanup-image /restorehealth >> C:\GP\results.log
ECHO Tentative de reparation des fichiers Windows 
sfc /scannow >> C:\GP\results.log
ECHO Test de performance du disque systeme
winsat disk -drive C -v >> C:\GP\results.log
ECHO Verification Smart 
wmic diskdrive get status >> C:\GP\results.log
ECHO Verification faillite predictive
wmic /namespace:\\root\wmi path MSStorageDriver_FailurePredictStatus >> C:\GP\results.log
ECHO Fin de script
exit 1