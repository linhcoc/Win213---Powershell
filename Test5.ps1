$number = 1
$number_sub = 49
While($number -le 50){

$result = $number + $number_sub
$number ++
$number_sub = $number_sub -2 
Write-Host "$result "
}