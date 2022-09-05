##############################################################################
# This is a PowerShell script to Fix Outlook Need Password Issue 	         #
#                       Authored by JAIUPADH on 01/08/2022                   #
#				                    Version 2.0				                 #
##############################################################################

    Write-Output "Please save all your work if not saved already, Executing the script in 60 seconds..."

    Start-Sleep -Seconds 60

    Del "$Env:localappdata\Packages\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy" -Force -Recurse

    Add-AppxPackage -Register "C:\Windows\SystemApps\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy\Appxmanifest.xml" -DisableDevelopmentMode -ForceApplicationShutdown

    Write-Output "Checking Device State Registration..."

    DSRegCMD /status

    Write-Output "Disconnecting from the Organization...."

    Start-Sleep -Seconds 10

    DSRegCMD /leave

    Write-Output "Outlook Fix Script executed successfully - Force rebooting the system in 45 seconds..."

    Start-Sleep -Seconds 45

    Restart-Computer -Force