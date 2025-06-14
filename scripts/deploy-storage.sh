az deployment group create
  --resource-group Infrastructure-RG
  --template-file storage.bicep
  --parameters storageAccountName='projectastorage01' skuName='Standard_LRS'