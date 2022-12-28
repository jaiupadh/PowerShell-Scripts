##############################################################################
# This is a PowerShell script to automate scrolllock & keep windows unlocked #
#                       Authored by JAIUPADH on 26/11`/2022                  #
############################################################################## 

Clear-Host

Echo "Relax I've got you covered ;) ! Windows Will be kept unlocked until the script exit"

$WShell = New-Object -com "Wscript.Shell"

while ($true)
{
  $WShell.sendkeys("{SCROLLLOCK}")
  Start-Sleep -Milliseconds 100
  $WShell.sendkeys("{SCROLLLOCK}")
  Start-Sleep -Seconds 180
}