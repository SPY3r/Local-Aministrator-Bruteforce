$pass = $args[0]
echo $pass
$password = ConvertTo-SecureString $pass -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential (".\Administrator", $password)
Start-Process powershell -Credential $Cred
