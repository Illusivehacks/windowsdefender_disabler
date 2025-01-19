@echo off

powershell set-MpPreference -DisableRealtimeMonitoring $true
netsh firewall set opmode disable