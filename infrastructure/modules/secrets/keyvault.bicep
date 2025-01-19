param location string = resourceGroup().location

param vaultName string

resource keyVault 'Microsoft.KeyVault/vaults@2023-07-01' = {
  location: location
  name: vaultName
  properties: {
    sku: {
      name : 'standard'
      family: 'A'
    }
    enableRbacAuthorization:true
    tenantId: subscription().tenantId
  }
}

output id string = keyVault.id
output name string = keyVault.name
