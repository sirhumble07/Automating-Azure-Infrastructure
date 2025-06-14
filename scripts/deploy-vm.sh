az deployment group create
  --resource-group Infrastructure-RG
  --template-file vm.bicep
  --parameters vmName='projectA-vm01' adminUsername='azureuser' adminPassword='P@ssword1234!'