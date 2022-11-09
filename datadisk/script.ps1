$diskconfig = New-AzDiskConfig -Location 'East US' -DiskSizeGB 5 -SkuName Standard_LRS -OsType Windows -CreateOption Empty ;

$disk=New-AzDisk -ResourceGroupName 'my-grp' -DiskName 'Disk01' -Disk $diskconfig;
$VirtualMachine = Get-AzVM -ResourceGroupName "my-grp" -Name "myVM"

Add-AzVMDataDisk -VM $VirtualMachine -Name  -CreateOption Attach -ManagedDiskId $disk.Id
Update-AzVM -ResourceGroupName "my-grp" -VM $VirtualMachine