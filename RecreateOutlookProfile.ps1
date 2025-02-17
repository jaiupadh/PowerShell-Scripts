##############################################################################
# This is a PowerShell script to automate scrolllock & keep windows unlocked #
#                       Authored by JAIUPADH on 16/09/2023                   #
############################################################################## 


# Backup the current Outlook profile
$BackupPath = "C:\OutlookBackup\"

"Checking to see if the folder [$Folder] exists already"
if (Test-Path -Path $BackupPath) {	"Path already exists!, skipping to create the path...."		
			     }
else {
`	"Path doesn't exist, Creating it."
	New-Item -Path "C:\OutlookBackup\" -ItemType "directory"
     }

$ProfileName = "Main Profile"

#Check if Outlook is running, and close it if it is running
$outlookProcess = Get-Process -Name "OUTLOOK" -ErrorAction SilentlyContinue
if ($outlookProcess) {
    Stop-Process -Name "OUTLOOK" -Force
    Start-Sleep -Seconds 5
}

# Export the current Outlook profile settings
Export-OutlookProfile -Identity $ProfileName -PSTFolderPath $BackupPath

# Remove the current Outlook profile
Remove-OutlookProfile -Identity $profileName

# Create a new Outlook profile (You may need to customize this part)
New-OutlookProfile -Name "NewProfileName" -EmailAddreses "new@example.com" -AccountType "Exchange"

# Open Outlook with the new profile
Start-Process "outlook.exe"

# Clean up old PST files or do any other necessary tasks