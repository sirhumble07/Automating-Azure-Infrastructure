param location string = resourceGroup().location

// Parameters for individual modules
param vnetName string = 'project-vnet'
param vnetAddressPrefix string = '10.0.0.0/16'
param subnetName string = 'web-subnet'
param subnetPrefix string = '10.0.1.0/24'

param nsgName string = 'project-nsg'
param storageAccountName string = 'projectastorage01'

param vmName string = 'project-winvm01'
param adminUsername string = 'azureadmin'
@secure()
param adminPassword string
param nicName string = 'project-nic'

param workspaceName string = 'project-logs'

param allowedSizes array = [
  'Standard_B2ms'
  'Standard_D2s_v3'
]

// VNet Module
module vnet 'vnet.bicep' = {
  name: 'VNetDeploy'
  params: {
    vnetName: vnetName
    vnetAddressPrefix: vnetAddressPrefix
    subnetName: subnetName
    subnetPrefix: subnetPrefix
  }
}

// NSG Module
module nsg 'nsg.bicep' = {
  name: 'NSGDeploy'
  params: {
    nsgName: nsgName
  }
}

// Storage Account Module
module storage 'storage.bicep' = {
  name: 'StorageDeploy'
  params: {
    storageAccountName: storageAccountName
  }
}

// Windows VM Module
module vm 'vm-windows.bicep' = {
  name: 'VMDeploy'
  params: {
    vmName: vmName
    adminUsername: adminUsername
    adminPassword: adminPassword
    nicName: nicName
  }
}

// Log Analytics Workspace Module
module monitor 'monitor.bicep' = {
  name: 'MonitorDeploy'
  params: {
    workspaceName: workspaceName
  }
}

// Policy Definition Module
module policyDef 'policy.bicep' = {
  name: 'PolicyDefDeploy'
  params: {
    allowedSizes: allowedSizes
  }
}

// Policy Assignment Module
module policyAssign 'policy-assignment.bicep' = {
  name: 'PolicyAssignDeploy'
  params: {
    policyDefinitionId: policyDef.outputs.policyDefinitionId
    allowedSizes: allowedSizes
  }
}
