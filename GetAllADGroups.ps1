##################################################################################
#                       This is a PowerShell script to                           #
#         list all groups in Active Directory & extract it to a CSV file         #
#                      authored by JAIUPADH on 27/12/2022                        #
##################################################################################

$Folder = 'C:\AD_Queries'

"Checking to see if the folder [$Folder] exists already"
if (Test-Path -Path $Folder) {	"Path already exists!, skipping to create the path...."		
			     }
else {
`	"Path doesn't exist, Creating it."
	New-Item -Path "C:\AD_Queries" -ItemType "directory"
     }

Get-ADGroup -Filter * | Select-Object Name, samAccountName, DistinguishedName | Export-csv -path C:\AD_Queries\ADGroupsList.csv -NoTypeInformation

Write-Output "Please navigate to the location C:\AD_Queries\ADGroupsList.csv to fetch the report generated"