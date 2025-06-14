param vnetName string
param vnetAddressPrefix string
param subnetName string
param subnetPrefix string
resource vnet 'Microsoft.Network/virtualNetworks@2020-06-01' = {
name: vnetName
location: resourceGroup().location
properties: {
addressSpace: {
addressPrefixes: [ vnetAddressPrefix ]
}
subnets: [
{
name: subnetName
properties: {
addressPrefix: subnetPrefix
}
}
]
}
}
