#########################################################################
#    This is a powershell script authored by jaiupadh on 27/04/23       #
#  It installs MSFT Defender on Entrust Managed Windows Device          #
#########################################################################

Invoke-WebRequest -Uri https://binary.entrust.com:8443/artifactory/infra-tools/MDE_Onboarding_Corp.ps1 -Outfile $env:temp\MDE_Onboarding_Corp.ps1 | powershell 

$env:temp\MDE_Onboarding_Corp.ps1
