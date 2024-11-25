$step = 0
do {
    Write-Host 'Notepad is running' -ForegroundColor Green
    $step++
    Start-Sleep -Seconds 1
    
    } until((Get-Process | Where{$_.ProcessName -eq 'notepad'}).Count -eq 0)
   
   Write-Host $step