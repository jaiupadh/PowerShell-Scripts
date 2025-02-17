cd C:\ProgramData\Cisco\Cisco Secure Client\VPN\Profile
del /f VPNDisable_ServiceProfile.xml
taskkill /F /IM "csc_ui.exe" /T
net stop csc_vpnagent && net start csc_vpnagent
pause