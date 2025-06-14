az deployment group create
  --resource-group Infrastructure-RG
  --template-file monitor.bicep
  --parameters workspaceName='projectA-logs'