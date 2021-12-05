function Set-RegistryKey(
    [string] $path,
    [string] $name,
    $value,
    $valueType
) {
    if (!(Test-Path $path)) {
        New-Item -Path $path -Force | Out-Null
        New-ItemProperty -Path $path -Name $name -Value $value `
            -PropertyType $valueType -Force | Out-Null
    }
    else {
        New-ItemProperty -Path $path -Name $name -Value $value `
            -PropertyType $valueType -Force | Out-Null
    }
}