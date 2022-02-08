# Storyline: DNS Resolver using Powershell
# Created by Jason Quiroga

param($network, $server)

for (($i = 1); $i -le 254; $i++)
{
    $ipaddress = "$network.$i"

    $resolved = Resolve-DnsName -DnsOnly $ipaddress -Server $server -ErrorAction Ignore | Select-Object -ExpandProperty NameHost -first 1

    if ($resolved -ne $null)
    {
        write-host $ipaddress $resolved
    }
}