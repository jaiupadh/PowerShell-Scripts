##############################################################################
#    This is a powershell script authored by jaiupadh on 24/09/22            #
# It is used for querying the AD & fetch LAPS Password for given Hostname    #
##############################################################################

$Hostname = Read-Host "`n Please enter Hostname of the device to fetch it's LAPS password"

Get-AdmPwdPassword -ComputerName $Hostname

Write-Output "`n Please use the Username as '.\edcard-ds' along with the LAPS Password generated above."