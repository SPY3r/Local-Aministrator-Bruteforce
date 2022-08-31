$pass = Get-Content pass.txt
cls
$password = ConvertTo-SecureString $pass -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential (".\Administrator", $password)
echo $pa
Start-Process powershell -Credential $Cred
