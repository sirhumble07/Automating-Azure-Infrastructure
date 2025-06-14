az deployment group create
  --resource-group Infrastructure-RG
  --template-file nsg.bicep
  --parameters nsgName='project-nsg'
