New-AzVm `
    -ResourceGroupName 'my-grp' `
    -Name 'myVM' `
    -Location 'East US' `
    -VirtualNetworkName 'myVnet' `
    -SubnetName 'default' `
    -SecurityGroupName 'NSG-FrontEnd' `
    -PublicIpAddressName 'myip' `
    -OpenPorts 80,3389