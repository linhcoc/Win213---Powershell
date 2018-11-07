$new_path = "C:\Users\Public\Documents"
New-Item -name "Apps" -ItemType Directory -Path C:\Users\Public\Documents
If ($PWD.Path -eq "C:\Users\Public\Documents\Apps"){
New-Item -name "Games" -ItemType Directory 
}else{
for ($t=1; $t -le 10){
Write-Host "Waiting $t"
Start-Sleep 1
$t = $t + 1
}
Set-Location $new_path\Apps\Games
Write-Host "You have been moved to the new directory"
}