#########################################################################
#    This is a powershell script authored by jaiupadh on 27/08/22       #
#   It is used for querying the AD group & retrieveing group members    #
#########################################################################

import-module activedirectory 

$Folder = 'C:\AD_Queries'

"Checking to see if the folder [$Folder] exists already"
if (Test-Path -Path $Folder) {	"Path already exists!, skipping to create the path...."		
			     }
else {
`	"Path doesn't exist, Creating it."
	New-Item -Path "C:\AD_Queries" -ItemType "directory"
     }

$USERNAME = Read-Host "Please enter a valid username to fetch their memberships"

Get-ADPrincipalGroupMembership -identity $USERNAME | select name,groupcategory,groupscope | Export-csv -path C:\AD_Queries\ADGroupMembership.csv -NoTypeInformation 

Write-Output "Please navigate to the location C:\AD_Queries\ADGroupMembership.csv to fetch the report generated"