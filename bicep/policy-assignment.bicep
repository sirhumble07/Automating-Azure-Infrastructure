param policyAssignmentName string = 'Enforce-AllowedVMSizes'
param policyDefinitionId string
param assignmentScope string = resourceGroup().id
param allowedSizes array = [
  'Standard_B2ms'
  'Standard_D2s_v3'
]

resource policyAssignment 'Microsoft.Authorization/policyAssignments@2021-06-01' = {
  name: policyAssignmentName
  properties: {
    displayName: 'Enforce Allowed VM Sizes'
    policyDefinitionId: policyDefinitionId
    scope: assignmentScope
    parameters: {
      allowedSizes: {
        value: allowedSizes
      }
    }
    enforcementMode: 'Default'
  }
}
