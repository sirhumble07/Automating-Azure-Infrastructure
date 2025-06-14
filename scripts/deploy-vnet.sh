az deployment group create
  --resource-group Infrastructure-RG
  --template-file vnet.bicep
  --parameters vnetName='project-vnet' vnetAddressPrefix='10.0.0.0/16' subnetName='web-subnet' subnetPrefix='10.0.1.0/24'