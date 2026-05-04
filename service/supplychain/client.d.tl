local types = require("supplychain.types")

local record Client
    createBillOfMaterialsImportJob: function(Client, types.CreateBillOfMaterialsImportJobInput): types.CreateBillOfMaterialsImportJobOutput, table
    createDataIntegrationFlow: function(Client, types.CreateDataIntegrationFlowInput): types.CreateDataIntegrationFlowOutput, table
    createDataLakeDataset: function(Client, types.CreateDataLakeDatasetInput): types.CreateDataLakeDatasetOutput, table
    createDataLakeNamespace: function(Client, types.CreateDataLakeNamespaceInput): types.CreateDataLakeNamespaceOutput, table
    createInstance: function(Client, types.CreateInstanceInput): types.CreateInstanceOutput, table
    deleteDataIntegrationFlow: function(Client, types.DeleteDataIntegrationFlowInput): types.DeleteDataIntegrationFlowOutput, table
    deleteDataLakeDataset: function(Client, types.DeleteDataLakeDatasetInput): types.DeleteDataLakeDatasetOutput, table
    deleteDataLakeNamespace: function(Client, types.DeleteDataLakeNamespaceInput): types.DeleteDataLakeNamespaceOutput, table
    deleteInstance: function(Client, types.DeleteInstanceInput): types.DeleteInstanceOutput, table
    getBillOfMaterialsImportJob: function(Client, types.GetBillOfMaterialsImportJobInput): types.GetBillOfMaterialsImportJobOutput, table
    getDataIntegrationEvent: function(Client, types.GetDataIntegrationEventInput): types.GetDataIntegrationEventOutput, table
    getDataIntegrationFlow: function(Client, types.GetDataIntegrationFlowInput): types.GetDataIntegrationFlowOutput, table
    getDataIntegrationFlowExecution: function(Client, types.GetDataIntegrationFlowExecutionInput): types.GetDataIntegrationFlowExecutionOutput, table
    getDataLakeDataset: function(Client, types.GetDataLakeDatasetInput): types.GetDataLakeDatasetOutput, table
    getDataLakeNamespace: function(Client, types.GetDataLakeNamespaceInput): types.GetDataLakeNamespaceOutput, table
    getInstance: function(Client, types.GetInstanceInput): types.GetInstanceOutput, table
    listDataIntegrationEvents: function(Client, types.ListDataIntegrationEventsInput): types.ListDataIntegrationEventsOutput, table
    listDataIntegrationFlowExecutions: function(Client, types.ListDataIntegrationFlowExecutionsInput): types.ListDataIntegrationFlowExecutionsOutput, table
    listDataIntegrationFlows: function(Client, types.ListDataIntegrationFlowsInput): types.ListDataIntegrationFlowsOutput, table
    listDataLakeDatasets: function(Client, types.ListDataLakeDatasetsInput): types.ListDataLakeDatasetsOutput, table
    listDataLakeNamespaces: function(Client, types.ListDataLakeNamespacesInput): types.ListDataLakeNamespacesOutput, table
    listInstances: function(Client, types.ListInstancesInput): types.ListInstancesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    sendDataIntegrationEvent: function(Client, types.SendDataIntegrationEventInput): types.SendDataIntegrationEventOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateDataIntegrationFlow: function(Client, types.UpdateDataIntegrationFlowInput): types.UpdateDataIntegrationFlowOutput, table
    updateDataLakeDataset: function(Client, types.UpdateDataLakeDatasetInput): types.UpdateDataLakeDatasetOutput, table
    updateDataLakeNamespace: function(Client, types.UpdateDataLakeNamespaceInput): types.UpdateDataLakeNamespaceOutput, table
    updateInstance: function(Client, types.UpdateInstanceInput): types.UpdateInstanceOutput, table
end

local record M
    new: function(table): Client
end

return M
