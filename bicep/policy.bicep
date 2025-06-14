param policyDefinitionName string = 'AllowedVMSizesPolicy'
param allowedSizes array = [
  'Standard_B2s'
  'Standard_D2s_v3'
  'Standard_D4s_v3'
]

resource vmSizePolicy 'Microsoft.Authorization/policyDefinitions@2021-06-01' = {
  name: policyDefinitionName
  properties: {
    displayName: 'Allowed VM Sizes Policy'
    policyType: 'Custom'
    mode: 'All'
    description: 'This policy restricts virtual machines to use only approved VM sizes.'
    parameters: {
      allowedSizes: {
        type: 'Array'
        metadata: {
          description: 'The list of approved VM sizes.'
        }
      }
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Compute/virtualMachines'
          }
          {
            not: {
              field: 'Microsoft.Compute/virtualMachines/sku.name'
              in: '[parameters('allowedSizes')]'
            }
          }
        ]
      }
      then: {
        effect: 'deny'
      }
    }
  }
}
