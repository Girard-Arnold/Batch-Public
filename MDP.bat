@ECHO Script de changement de mot de passe, vérifiez tout de même que le changement s'est bien effectué après.

@ECHO
@IF %computername:~2,3%==BRI @ECHO Site détecté : ville1, changement du mot de passe... & net user compte1 mdp1
@IF %computername:~2,3%==HQR @ECHO Site détecté : ville2, changement du mot de passe... & net user compte2 mdp2
@IF %computername:~2,3%==MER @ECHO Site détecté : ville3, changement du mot de passe... & net user compte3 mdp3
@IF %computername:~2,3%==FLE @ECHO site détecté : ville4, changement du mot de passe... & net user compte4 mdp4
@IF %computername:~2,3%==MOU @ECHO site détecté : ville5, changement du mot de passe... & net user compte5 mdp5
@REM IF %computername:~0,5%==BLESE TODO
@ECHO Changement de mot de passe effectué.
@ECHO Fin de script.
@ECHO Ce script va s'effacer après pression d'une touche.
@ECHO Vérifiez tout de même si le fichier s'est bien effacé en fin de script.
@pause
(goto) 2>nul & del "%~f0"
@GOTO EOF
