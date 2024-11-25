
function countstart{
    $total = (Get-Service | Where{$_.Status -eq 'Running'}).Count
    Write-Host "Total services is running state = $($total)"
    }

function countstop{
    $total = (Get-Service | Where{$_.Status -eq 'Stopped'}).Count
    Write-Host "Total services is running state = $($total)"
    }

    function countservice{
    param(
    [string]$status
    )
    $total = (Get-Service | Where{$_.Status -eq $status}).Count
    Write-Host "Total services in $($status.ToLower()) state = $($total)"
    }

    countstart
    countstop

    countservice -status 'Running'
    countservice('Stopped')