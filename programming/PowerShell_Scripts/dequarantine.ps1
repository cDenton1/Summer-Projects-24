# automation for taking a device out of quarantine when a user tries to access their email
# written by one of my colleagues, command to run - .\dequarantine.ps1 <username> <deviceid>

param (
  [paramter(mandatory = $true)][string]$user, [string]$deviceid
)

Get-MobileDevice -Mailbox $user | select friendlyname, deviceid, deviceaccessstate

if("" -eq $deviceid) {exit}
else {
  Set-CASMailbox -Identity $user -Activate SyncAllowedDeviceIDs @{Add = "$deviceid"}
  sleep 1
  Write-Host
  Get-MobileDevice -Mailbox $user | select friendlyname, deviceid, deviceaccessstate | ft
}
