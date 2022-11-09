$Subnet = Get-AzVirtualNetwork -Name "myVNet" -ResourceGroupName "my-grp" 
$IPconfig = New-AzNetworkInterfaceIpConfig -Name "IPConfig1" -PrivateIpAddressVersion IPv4 -PrivateIpAddress "10.0.0.10" -SubnetId $Subnet.Subnets[0].Id
New-AzNetworkInterface -Name "NetworkInterface1" -ResourceGroupName "my-grp" -Location "eastus" -IpConfiguration $IPconfig