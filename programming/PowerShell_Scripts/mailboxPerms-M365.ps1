$csvPath = Read-Host "Enter path for csv file" 
$csvFile = Import-Csv -Path $csvPath -Delimiter "," 

Write-Host "You will be running on these name: "
($csvFile[0..9]).'Display Name'
Write-Host "..."

$cont = Read-Host "Would you like to proceed (y/n)"

if ("y" -eq $cont) {

Import-Csv -Path $csvPath -Delimiter "," | ForEach-Object {
if ("#N/A", $null -eq $_.'Display Name') {}
else {
Add-RecipientPermission -Identity $_.'Display Name' -Trustee $_.PrimarySmtp -AccessRights "SendAs" -Confirm:$False
}
}

}
else {
Write-Host "Quit execution, exiting"
exit
}
