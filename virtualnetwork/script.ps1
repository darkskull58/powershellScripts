$vnet = @{
    Name = 'myVNet'
    ResourceGroupName = 'my-grp'
    Location = 'EastUS'
    AddressPrefix = '10.0.0.0/16'
}
Remove-AzVirtualNetwork -Name myVNet -ResourceGroupName my-grp
$variable=New-AzVirtualNetwork @vnet
Write-Host $variable.Location
Write-Host $variable.AddressSpace.AddressPrefixes

$subnet = @{
    Name = 'default'
    VirtualNetwork = $variable
    AddressPrefix = '10.0.0.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

$variable | Set-AzVirtualNetwork