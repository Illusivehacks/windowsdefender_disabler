# windowsdefender_disabler

🌟 Batch Script: Disable Windows Defender & Firewall 🌟
This batch script is a quick and efficient tool to temporarily disable Windows Defender Realtime Monitoring and Windows Firewall for troubleshooting, testing, or specific tasks.

🛠️ Features
🚀 Efficiency: Instantly disables real-time protection and the firewall without navigating through settings.
🎯 Precision: Designed for situations requiring unrestricted network access or bypassing Defender for specific actions.
 🪶 Simplicity: Lightweight and easy to use, requiring just a single .bat file.

 
📜 Script Overview
1. Disable Windows Defender Realtime Monitoring
powershell
````powershell set-MpPreference -DisableRealtimeMonitoring $true````

Purpose: Temporarily disables Windows Defender real-time protection.
Why? Useful for bypassing security features during testing or troubleshooting.

3. Disable Windows Firewall
cmd
````netsh firewall set opmode disable````
Purpose: Turns off Windows Firewall for unrestricted network access.
Why? Ensures no connections are blocked when testing or running specific applications.


⚙️ Requirements
Administrator Privileges
You must run the script as an administrator for it to work.
PowerShell Access
Ensure PowerShell is available and properly configured on your system.



🚀 How to Use
Download or Create the Script:
Copy the following code and save it as a .bat file (e.g., DisableProtection.bat):
bat

@echo off
powershell set-MpPreference -DisableRealtimeMonitoring $true
netsh firewall set opmode disable


Run the Script:
Right-click the batch file and select Run as Administrator.

Verify the Changes:
Open Windows Security and confirm that:
Real-time protection is turned off.
Windows Firewall is disabled.



📝 Important Notes
⚠️ Security Warning:
Disabling security features can expose your system to threats. Use this script responsibly and only when absolutely necessary.

To re-enable these features, use the following commands:

Re-enable Windows Defender:
powershell
Copy
Edit
powershell set-MpPreference -DisableRealtimeMonitoring $false
Re-enable Windows Firewall:
cmd
Copy
Edit
netsh firewall set opmode enable
📄 License
This script is open-source and distributed under the MIT License.
Feel free to use, modify, and share it while giving proper credit to the original author.

⚡ Disclaimer
The author is not responsible for any damage, data loss, or security risks caused by misuse of this script.
➡️ Use at your own risk. Ensure you understand the implications of disabling security features before running this script.

🛡️ Stay safe and code responsibly! ✨

