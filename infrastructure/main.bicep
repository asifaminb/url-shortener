param location string = resourceGroup().location

var uniqueId = uniqueString(resourceGroup().id)

module apiSevice 'modules/compute/appservice.bicep' = {
    name: 'apiDeployment'
    params: {
        appName: 'api-${uniqueString(resourceGroup().id)}'
        appServicePlanName: 'plan-api-${uniqueId}'
        location: location
    }
}
