// ****************************************
// Azure Bicep Deployment
// This deployemnt will deploy a simple Azure storage Accountthe below components for Private AKS deployment.
// ****************************************

targetScope = 'resourceGroup'

param location string = 'westeurope'
param resourcePrefix string
module stg 'Modules/storageAccount.bicep' = {
  name: 'sta'
  params: {
    location: location    
    storageAccountPrefix: resourcePrefix
    
  }
}

