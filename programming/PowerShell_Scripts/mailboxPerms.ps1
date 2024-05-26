# automation file for taking in names from a csv file and giving all their emails "Send As" permissions
# written by me witha little bit of help from one of my colleagues

$csvPath = Read-Host "Enter path for csv file"
$csvFile = Import-Csv -Path $csvPath -Delimiter ","

Write-Host "You will be running on these names: "
($csvFile[0..9].'Display Name') # not sure where the closing bracket should actually be
Write-Host "..."

$cont = Read-Host "Would you like to continue (y/n)"
if("y" -eq $cont) {
  Import-Csv -Path $csvPath -Delimiter "," | ForEach-Object {
    if("#N/A", $null -eq $_.'Display Name') {}
    else {
      # testing command - Write-Host "testing: $_.'Display Name' and $_.PrimarySmtp"
      Add-ADPermission -Identity $_.'Display Name' -User $_.PrimarySmtp -AccessRights ExtendedRights -ExtendedRights "Send As"
    }
  }
} 
else {
  Write-Host "Quit execution, exiting"
  exit
}
