Import-Module -Name "$PSScriptRoot\Registry.psm1" -Force

function Disable-WebSearch(){
    $path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
    $name = "DisableSearchBoxSuggestions"
    $value = "00000001"
    
    Set-RegistryKey $path $name $value DWord
}