$name = Get-ChefNode ad, domain
$ip = [System.Net.Dns]::GetHostByName($name).AddressList[0].IPAddressToString

$NICs = Get-WmiObject '
  -Class Win32_NetworkAdapterConfiguration '
  -ComputerName $env:ComputerName '
  -Filter "IPEnabled=TRUE"

foreach($NIC in $NICs) {
    $NIC.SetDNSServerSearchOrder($ip)
    $NIC.SetDynamicDNSRegistration("TRUE")
  }
}

