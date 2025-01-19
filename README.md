# windowsdefender_disabler

Batch File: Disable Windows Defender Realtime Monitoring & Firewall
This batch script is designed to perform two specific tasks:

Disable Windows Defender Realtime Monitoring using PowerShell.
Disable Windows Firewall using netsh.


Key Features
Efficiency: Automates disabling Windows Defender real-time protection, saving time compared to manual configuration.
Control: Instantly disables Windows Firewall to allow unrestricted network activity.
Simplicity: The script is lightweight and straightforward, requiring no additional dependencies.


Script Breakdown
1. Disable Windows Defender Realtime Monitoring
The PowerShell command:

powershell
Copy
Edit
powershell set-MpPreference -DisableRealtimeMonitoring $true
Temporarily disables Windows Defender real-time monitoring.
Helps bypass protection for specific tasks or troubleshooting.
2. Disable Windows Firewall
The netsh command:

cmd
Copy
Edit
netsh firewall set opmode disable
Disables Windows Firewall to allow unrestricted communication.
Useful in cases where the firewall blocks necessary connections.
Prerequisites
Administrator Privileges:
This script requires administrative permissions to execute the commands. Ensure you run the batch file as an administrator.

Windows PowerShell:
PowerShell must be available and accessible on the system.

Usage Instructions
Download or Create the Script:

Copy the code below and save it as a .bat file (e.g., DisableProtection.bat):
bat
Copy
Edit
@echo off
powershell set-MpPreference -DisableRealtimeMonitoring $true
netsh firewall set opmode disable
Run the Script:

Right-click the batch file and select Run as Administrator.
Confirm the Changes:

Windows Defender: Open Windows Security and verify that real-time protection is disabled.
Windows Firewall: Open the Firewall settings and ensure it’s turned off.
Important Notes
Security Implications:

Disabling real-time protection and the firewall exposes your system to potential threats. Use this script cautiously and re-enable the features once your task is complete.
To re-enable protection, use the following commands:
Enable Windows Defender:
powershell
Copy
Edit
powershell set-MpPreference -DisableRealtimeMonitoring $false
Enable Windows Firewall:
cmd
Copy
Edit
netsh firewall set opmode enable
Educational Use Only:
This script is provided for educational purposes. Ensure compliance with your organization's policies before use.

License
This script is open-source and distributed under the MIT License. You are free to use, modify, and distribute it, provided the original author is credited.

Disclaimer
The author is not responsible for any potential damage or data loss caused by misuse of this script. Use at your own risk and ensure you understand the implications of disabling security features.

