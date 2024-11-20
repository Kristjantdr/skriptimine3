$countries = @('India', 'Australia', 'China')
$capitals = @('New Delhi', 'Canberra', 'Beijing')

Write-Host "Select country:" -ForegroundColor Yellow
for($i = 0; $i -lt $countries.Count; $i++){
Write-Host ($i + 1)":"$countries[$i] -ForegroundColor Cyan
}

$selectedCountry = Read-Host "Please select country"
if($selectedCountry -ge)
Write-output "$(countries[$selectedCountry-1])'s capital is $(capitals[selectedCountry-1])"