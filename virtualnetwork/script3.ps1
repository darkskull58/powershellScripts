$subnet = @{
    Name = 'default'
    VirtualNetwork = $variable
    AddressPrefix = '10.0.0.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

$variable | Set-AzVirtualNetwork