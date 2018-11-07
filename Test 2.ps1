$guess = 11
Write-Host "You have 3 tries to guess a number between 1 and 15"
For($i =0; $i -lt 3){
$user_guess = Read-Host "Please guess the number"
if ($user_guess -ne $guess ){
Write-Host "Play again ?"
$i = $i +1
}else{
Write-Host "Congratulation"
break
}}