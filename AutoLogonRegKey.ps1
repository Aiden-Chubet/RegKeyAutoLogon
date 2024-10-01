$RegistryPath = 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon'
$Name         = 'DefaultUserName'
$Value        = '011-TB-014'
$Name2        = 'DefaultPassword'
$Value2       = 'REDACTED'
$Name3        = 'AutoAdminLogon'
$Value3       = '1'

Get-Item -Path $RegistryPath | New-ItemProperty -Name $Name -Value $Value -PropertyType String -Force
Get-Item -Path $RegistryPath | New-ItemProperty -Name $Name2 -Value $Value2 -PropertyType String -Force
Get-Item -Path $RegistryPath | New-ItemProperty -Name $Name3 -Value $Value3 -PropertyType String -Force

#Verify Keys
