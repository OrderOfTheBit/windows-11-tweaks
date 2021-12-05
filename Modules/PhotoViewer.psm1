Import-Module -Name "$PSScriptRoot\Registry.psm1" -Force

function Enable-PhotoViewer() {
    $path = "HKLM:\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations"
    $names = @(".bmp", ".png", ".jpg", ".jpeg")
    $value = "PhotoViewer.FileAssoc.Tiff"

    foreach ($name in $names) {
        Set-RegistryKey $path $name $value String
    }
}