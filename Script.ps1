Import-Module -Name "$PSScriptRoot\Modules\LockScreen.psm1" -Force
Import-Module -Name "$PSScriptRoot\Modules\PhotoViewer.psm1" -Force
Import-Module -Name "$PSScriptRoot\Modules\StartMenu.psm1" -Force

function Run(
    [switch]$disableLockScreen,
    [switch]$disableWebSearch,
    [switch]$enablePhotoViewer
) {
    if ($disableLockScreen -eq $true) {
        Write-Host "Disable Lock Screen"
        Disable-LockScreen
    }

    if($disableWebSearch -eq $true){
        Write-Host "Disable Web Search"
        Disable-WebSearch
    }

    if ($enablePhotoViewer -eq $true) {
        Write-Host "Enable Photo Viewer"
        Enable-PhotoViewer
    }

    Write-Host "Finished"
}

Run -disableLockScreen -disableWebSearch -enablePhotoViewer