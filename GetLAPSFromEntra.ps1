##############################################################################
#    This is a powershell script authored by jaiupadh on 19/10/24            #
# It is used for querying Entra & fetch LAPS Password for given Hostname     #
##############################################################################

$Hostname = Read-Host "`n Please enter Hostname of the device to fetch it's LAPS password"

Get-LapsADPassword $Hostname -AsPlainText

Write-Output "`n Please find the LAPS Password along with the Username generated above."

# *Note: When the new LAPS password is used, after 8 hours the admin account will automatically be logged out of that computer if it’s still logged in, 
#and the LAPS password will be rotated. This is in addition to the existing 30-day LAPS password rotation. 
#If a system has not yet moved to the new LAPS because it hasn’t been on the network since the GPOs were updated, the source line will indicate 
#that this is still the old LAPS password (LegacyLAPSClearTextPassword) which is not rotated automatically when used.

Start-Sleep -Seconds 45

Write-Output "`n Exiting...."