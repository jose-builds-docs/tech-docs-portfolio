# ==========================================
# Script Name: System-Health-Check.ps1
# Author: Jose Moran
# Description: Enterprise System Health & Telemetry Diagnostic Report
# ==========================================
Clear-Host
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "   SYSTEM HEALTH & COMPREHENSIVE DIAGNOSTIC REPORT" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "Gathering full hardware, OS, and network telemetry..." -ForegroundColor Yellow
# 1. Hardware & System Info
$computerInfo = Get-CimInstance Win32_ComputerSystem
$osInfo = Get-CimInstance Win32_OperatingSystem
$processorInfo = Get-CimInstance Win32_Processor
$biosInfo = Get-CimInstance Win32_BIOS
$memoryInfo = Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum
$totalRAM = [math]::Round($memoryInfo.Sum / 1GB, 2)
Write-Host "
[+] Hardware Overview:" -ForegroundColor Green
Write-Host "    Manufacturer: " -NoNewline; Write-Host "$($computerInfo.Manufacturer)" -ForegroundColor White
Write-Host "    Model:        " -NoNewline; Write-Host "$($computerInfo.Model)" -ForegroundColor White
Write-Host "    Serial Number:" -NoNewline; Write-Host "$($biosInfo.SerialNumber)" -ForegroundColor White
Write-Host "    Processor:    " -NoNewline; Write-Host "$($processorInfo.Name)" -ForegroundColor White
Write-Host "    Total RAM:    " -NoNewline; Write-Host "$totalRAM GB" -ForegroundColor White
Write-Host "    BIOS Version: " -NoNewline; Write-Host "$($biosInfo.SMBIOSBIOSVersion)" -ForegroundColor White
# 2. Operating System & Performance Info
$uptime = (Get-Date) - $osInfo.LastBootUpTime
$procCount = (Get-Process).Count
Write-Host "
[+] Operating System & Performance:" -ForegroundColor Green
Write-Host "    OS Name:      " -NoNewline; Write-Host "$($osInfo.Caption)" -ForegroundColor White
Write-Host "    Version:      " -NoNewline; Write-Host "$($osInfo.Version)" -ForegroundColor White
Write-Host "    Last Boot:    " -NoNewline; Write-Host "$($osInfo.LastBootUpTime)" -ForegroundColor White
Write-Host "    Uptime:       " -NoNewline; Write-Host "$($uptime.Days) days, $($uptime.Hours) hours" -ForegroundColor White
Write-Host "    Active Procs: " -NoNewline; Write-Host "$procCount processes running" -ForegroundColor White
# 3. Storage Info
$drive = Get-PSDrive C
$freeSpaceGB = [math]::Round($drive.Free / 1GB, 2)
$totalSpaceGB = [math]::Round(($drive.Used + $drive.Free) / 1GB, 2)
$percentFree = [math]::Round(($drive.Free / ($drive.Used + $drive.Free)) * 100, 1)
Write-Host "
[+] C: Drive Storage:" -ForegroundColor Green
Write-Host "    Free Space:   " -NoNewline; Write-Host "$freeSpaceGB GB out of $totalSpaceGB GB ($percentFree% free)" -ForegroundColor White
# 4. IP Configuration & Network Info
Write-Host "
[+] IP & Network Configuration:" -ForegroundColor Green
Get-NetIPAddress -AddressFamily IPv4 -InterfaceIndex (Get-NetAdapter | Where-Object {$_.Status -eq "Up"} | Select-Object -ExpandProperty ifIndex) | Select-Object IPAddress, InterfaceAlias | Format-Table -AutoSize
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "           DIAGNOSTICS COMPLETE" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan
