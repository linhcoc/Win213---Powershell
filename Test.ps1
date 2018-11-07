#Step a: Check current working directory
$workdingdirectory = "$HOME\Documents"
If($PWD.Path -ne $workdingdirectory ){
    Write-Host "You are not in the Document folder. Change to right location ?"
    Pause
    Set-Location $workdingdirectory
}

# User should be prompted to enter any number betwwen 0 to 100
New-Item -ItemType File -Name TestGrade.txt
Do{
[int]$choice = Read-Host "Please enter your number between 0 to 100"

if($choice -lt 0 -or $choice -gt 100 ){
Write-Host "Invalid entry"
}elseif($choice -ge 90 -and $choice -lt 100){
Write-Host "Grade is A+"  

}elseif($choice -ge 80 -and $choice -le 89){
Write-Host "Grade is A"

}elseif($choice -ge 70 -and $choice -le 79){
Write-Host "Grade is B"

}elseif($choice -ge 60 -and $choice -le 69){
Write-Host "Grade is C" | Out-File TestGrade.txt -Append

}elseif($choice -ge 50 -and $choice -le 59){
Write-Host "Grade is D"

}elseif($choice -ge 0 -and $choice -le 49){
Write-Host "Grade is F"

}
}while($choice -ne 999)
