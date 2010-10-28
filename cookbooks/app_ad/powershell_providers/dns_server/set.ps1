$Domain = Get-ChefNode ad, domain
Write-Host "Using domain $Domain as DNS"

$Ip = [System.Net.Dns]::GetHostByName($Domain).AddressList[0].IPAddressToString
Write-Host "Now using $Ip for DNS resolution"

$NICs = Get-WmiObject -Class Win32_NetworkAdapterConfiguration -ComputerName $env:ComputerName -Filter "IPEnabled=TRUE"

foreach($NIC in $NICs) {
    $NIC.SetDNSServerSearchOrder($Ip)
    $NIC.SetDynamicDNSRegistration("TRUE")
  }
}

