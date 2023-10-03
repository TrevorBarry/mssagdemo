# list all vms with their network configuration
# by: Nikko
# Date: 2018-10-25
# Version: 1.0
# Description: This script will list all vms with their network configuration

# Get all VMs
$VMs = Get-VM

# Loop through all VMs
foreach ($VM in $VMs) {
    $VM | Select-Object Name, @{N="Network"; E={$_.NetworkAdapters[0].NetworkName}}, @{N="MAC"; E={$_.NetworkAdapters[0].MacAddress}}, @{N="IP"; E={$_.Guest.IPAddress}}
}

# EOF