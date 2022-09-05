#########################################################################
#    This is a powershell script authored by jaiupadh on 26/08/22       #
#   It is used for querying the AD group & retrieveing group members    #
#########################################################################

$Folder = 'C:\AD_Queries'

"Checking to see if the folder [$Folder] exists already"
if (Test-Path -Path $Folder) {	"Path already exists!, skipping to create the path...."		
			     }
else {
`	"Path doesn't exist, Creating it."
	New-Item -Path "C:\AD_Queries" -ItemType "directory"
     }

$AD_Group_Name = Read-Host "Please enter a valid AD Group name to retrieve its members"

Get-ADGroupMember -identity "$AD_Group_Name" | select Name,SamAccountName | Export-csv -path C:\AD_Queries\ADmembers.csv -NoTypeInformation 

Write-Output "Please navigate to the location C:\AD_Queries\ADmembers.csv to fetch the report generated"