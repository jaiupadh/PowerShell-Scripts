###############################################################################################
# This is a PowerShell script to fecth bitlocker recoverykey from the AD for a given Hostname #
#                                   Authored by JAIUPADH on 17/12/2022                        #
###############################################################################################

$Hostname = Read-Host "`n Please enter Hostname of the device to fetch it's 42 digit BitLocker Recovery Key"

$objComputer = Get-ADComputer $Hostname

$Bitlocker_Object = Get-ADObject -Filter {objectclass -eq 'msFVE-RecoveryInformation'} -SearchBase $objComputer.DistinguishedName -Properties 'msFVE-RecoveryPassword'

Write-Output "`n Please find the 42 digit Bitlocker Recovery Key listed below:`n"

$Bitlocker_Object