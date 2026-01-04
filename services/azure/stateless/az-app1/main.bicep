targetScope = 'subscription'

@description('Azure region where the resource group will be created.')
param location string

@description('Name of the resource group to manage.')
param resourceGroupName string

@description('Optional tags applied to the resource group.')
param tags object = {}

resource rg 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: resourceGroupName
  location: location
  tags: tags
}

output resourceGroupName string = rg.name
output resourceGroupId string = rg.id
