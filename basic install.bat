set SEP="S_WW_Symantec_SEP_SylinkDrop_12_1_EN_N001"
set SEP2="SEP_DEF_64"
set VAULT="S_WW_EnterpriseVaultOutlook_11_0_1_3706_EN_N001"
set DLP="S_WW_SymantecDLPagent_14_0_2000_01056_EN_N002"
set SKYPE="S_WW_Microsoft_Skype_for_business_basic_2016_EN_N002"
set ZIP="S_WW_ZipMail_14_3_4_EN_N001"


start /W c:\users\%username%\desktop\cetsi\%VAULT%.exe
start /W c:\users\%username%\desktop\cetsi\%ZIP%.exe
start /W c:\users\%username%\desktop\cetsi\%SKYPE%.exe
start /W c:\users\%username%\desktop\cetsi\%DLP%.exe
start /W c:\users\%username%\desktop\cetsi\%SEP%.exe
start /W c:\users\%username%\desktop\cetsi\%SEP2%.exe /q
net user compte MDP
pause
