@echo off

reg delete "HKLM\Software\Policies\Microsoft" /f
reg delete "HKCU\Software\Policies\Microsoft" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies" /f
timeout 1
RD /S /Q "%WinDir%\System32\GroupPolicyUsers" && RD /S /Q "%WinDir%\System32\GroupPolicy"
gpupdate /force /boot
shutdown -r -t 0
