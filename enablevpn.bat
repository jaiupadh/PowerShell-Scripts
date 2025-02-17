cd C:\ProgramData\Cisco\Cisco AnyConnect Secure Mobility Client\Profile\
del /f VPNDisable_ServiceProfile.xml
taskkill /F /IM "vpnui.exe" /T
net stop vpnagent && net start vpnagent
pause