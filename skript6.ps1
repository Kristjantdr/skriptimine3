$data = Import-Csv "C:\Users\Kristjan\skriptimine\data.csv"

$schoolData = @()
foreach($personData in $data){

$personData.Age = [int]$personData.Age
$school = ""

    if($personData.Age -ge 4 -and $personData.Age -le 10){
        $school = "Junior"
        } elseif($personData.Age -ge 11 -and $personData.Age -le 17){
        $school = "Senior"
        }
        

    $schoolData += ]@{'Name'=$personData.Name; 'School'=$school}
    $formatteData = $schoolData | ForEach-Object {
        "$($_.Name),$($_.School)
}

Set-Content -Path "C:\Users\Kristjan\skriptimine\school_data.csv" -value $formatteData

Write-Host $schoolData
Export-Csv -NoTypeInformation -Path "C:\Users\Kristjan\skriptimine\school_data.csv"
