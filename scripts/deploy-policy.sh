az deployment tenant create
  --template-file policy.bicep
  --parameters allowedSizes='['Standard_B2ms', 'Standard_D2s_v3']'