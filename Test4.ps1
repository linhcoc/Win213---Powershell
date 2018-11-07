$path = "$HOME\Documents"
If($pwd.Path -ne $path){
Write-Host "Not in correct folder"
Set-Location $path
}else{
Get-ChildItem -Directory
}