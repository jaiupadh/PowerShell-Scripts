##############################################################################
# This is a PowerShell script to Fix Outlook Need password Issue 	         #
#                       Authored by JAIUPADH on 30/07/2022                   #
##############################################################################

# Modify the script with $Env:localappdata


$USERNAME = Read-Host "Please enter the username which you have used to log into this system (Example: UPADHYJ/ARMSTRB)"

$Folder = 'C:\Users\$USERNAME\AppData\Local\Packages\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy'

if (Test-Path -Path $Folder) {	"Path exists! Valid username,Executing the script...."

    Write-Output "Please save all your work if not saved already, Executing the script in 60 seconds..."

    Start-Sleep -Seconds 60

    Del "C:\Users\$USERNAME\AppData\Local\Packages\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy" -Force -Recurse

    Add-AppxPackage -Register "C:\Windows\SystemApps\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy\Appxmanifest.xml" -DisableDevelopmentMode -ForceApplicationShutdown

    Write-Output "Checking Device State Registration..."

    DSRegCMD /status

    Write-Output "Disconnecting from the Organization...."

    Start-Sleep -Seconds 10

    DSRegCMD /leave

    Write-Output "Outlook Fix Script executed successfully - Force rebooting the system in 45 seconds..."

    Start-Sleep -Seconds 45

    Restart-Computer -Force
		
			     }
else {
`	"Path doesn't exist,Please enter a valid username & re-run this script..."
     }