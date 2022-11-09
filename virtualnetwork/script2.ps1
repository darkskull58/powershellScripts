$vnetname="myVNet"
$rgname="my-grp"

$outputs=Get-AzVirtualNetwork -Name $vnetname -ResourceGroupName $rgname
Write-Host $outputs.Location
Write-Host $outputs.AddressSpace.AddressPrefixes