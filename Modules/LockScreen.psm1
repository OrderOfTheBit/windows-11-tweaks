Import-Module -Name "$PSScriptRoot\Registry.psm1" -Force

function Disable-LockScreen(){
    $path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"
    $name = "NoLockScreen"
    $value = "00000001"
    
    Set-RegistryKey $path $name $value DWord
}