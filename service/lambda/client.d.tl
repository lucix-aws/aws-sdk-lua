local types = require("lambda.types")

local record Client
    addLayerVersionPermission: function(Client, types.AddLayerVersionPermissionInput): types.AddLayerVersionPermissionOutput, table
    addPermission: function(Client, types.AddPermissionInput): types.AddPermissionOutput, table
    checkpointDurableExecution: function(Client, types.CheckpointDurableExecutionInput): types.CheckpointDurableExecutionOutput, table
    createAlias: function(Client, types.CreateAliasInput): types.CreateAliasOutput, table
    createCapacityProvider: function(Client, types.CreateCapacityProviderInput): types.CreateCapacityProviderOutput, table
    createCodeSigningConfig: function(Client, types.CreateCodeSigningConfigInput): types.CreateCodeSigningConfigOutput, table
    createEventSourceMapping: function(Client, types.CreateEventSourceMappingInput): types.CreateEventSourceMappingOutput, table
    createFunction: function(Client, types.CreateFunctionInput): types.CreateFunctionOutput, table
    createFunctionUrlConfig: function(Client, types.CreateFunctionUrlConfigInput): types.CreateFunctionUrlConfigOutput, table
    deleteAlias: function(Client, types.DeleteAliasInput): types.DeleteAliasOutput, table
    deleteCapacityProvider: function(Client, types.DeleteCapacityProviderInput): types.DeleteCapacityProviderOutput, table
    deleteCodeSigningConfig: function(Client, types.DeleteCodeSigningConfigInput): types.DeleteCodeSigningConfigOutput, table
    deleteEventSourceMapping: function(Client, types.DeleteEventSourceMappingInput): types.DeleteEventSourceMappingOutput, table
    deleteFunction: function(Client, types.DeleteFunctionInput): types.DeleteFunctionOutput, table
    deleteFunctionCodeSigningConfig: function(Client, types.DeleteFunctionCodeSigningConfigInput): types.DeleteFunctionCodeSigningConfigOutput, table
    deleteFunctionConcurrency: function(Client, types.DeleteFunctionConcurrencyInput): types.DeleteFunctionConcurrencyOutput, table
    deleteFunctionEventInvokeConfig: function(Client, types.DeleteFunctionEventInvokeConfigInput): types.DeleteFunctionEventInvokeConfigOutput, table
    deleteFunctionUrlConfig: function(Client, types.DeleteFunctionUrlConfigInput): types.DeleteFunctionUrlConfigOutput, table
    deleteLayerVersion: function(Client, types.DeleteLayerVersionInput): types.DeleteLayerVersionOutput, table
    deleteProvisionedConcurrencyConfig: function(Client, types.DeleteProvisionedConcurrencyConfigInput): types.DeleteProvisionedConcurrencyConfigOutput, table
    getAccountSettings: function(Client, types.GetAccountSettingsInput): types.GetAccountSettingsOutput, table
    getAlias: function(Client, types.GetAliasInput): types.GetAliasOutput, table
    getCapacityProvider: function(Client, types.GetCapacityProviderInput): types.GetCapacityProviderOutput, table
    getCodeSigningConfig: function(Client, types.GetCodeSigningConfigInput): types.GetCodeSigningConfigOutput, table
    getDurableExecution: function(Client, types.GetDurableExecutionInput): types.GetDurableExecutionOutput, table
    getDurableExecutionHistory: function(Client, types.GetDurableExecutionHistoryInput): types.GetDurableExecutionHistoryOutput, table
    getDurableExecutionState: function(Client, types.GetDurableExecutionStateInput): types.GetDurableExecutionStateOutput, table
    getEventSourceMapping: function(Client, types.GetEventSourceMappingInput): types.GetEventSourceMappingOutput, table
    getFunction: function(Client, types.GetFunctionInput): types.GetFunctionOutput, table
    getFunctionCodeSigningConfig: function(Client, types.GetFunctionCodeSigningConfigInput): types.GetFunctionCodeSigningConfigOutput, table
    getFunctionConcurrency: function(Client, types.GetFunctionConcurrencyInput): types.GetFunctionConcurrencyOutput, table
    getFunctionConfiguration: function(Client, types.GetFunctionConfigurationInput): types.GetFunctionConfigurationOutput, table
    getFunctionEventInvokeConfig: function(Client, types.GetFunctionEventInvokeConfigInput): types.GetFunctionEventInvokeConfigOutput, table
    getFunctionRecursionConfig: function(Client, types.GetFunctionRecursionConfigInput): types.GetFunctionRecursionConfigOutput, table
    getFunctionScalingConfig: function(Client, types.GetFunctionScalingConfigInput): types.GetFunctionScalingConfigOutput, table
    getFunctionUrlConfig: function(Client, types.GetFunctionUrlConfigInput): types.GetFunctionUrlConfigOutput, table
    getLayerVersion: function(Client, types.GetLayerVersionInput): types.GetLayerVersionOutput, table
    getLayerVersionByArn: function(Client, types.GetLayerVersionByArnInput): types.GetLayerVersionByArnOutput, table
    getLayerVersionPolicy: function(Client, types.GetLayerVersionPolicyInput): types.GetLayerVersionPolicyOutput, table
    getPolicy: function(Client, types.GetPolicyInput): types.GetPolicyOutput, table
    getProvisionedConcurrencyConfig: function(Client, types.GetProvisionedConcurrencyConfigInput): types.GetProvisionedConcurrencyConfigOutput, table
    getRuntimeManagementConfig: function(Client, types.GetRuntimeManagementConfigInput): types.GetRuntimeManagementConfigOutput, table
    invoke: function(Client, types.InvokeInput): types.InvokeOutput, table
    invokeAsync: function(Client, types.InvokeAsyncInput): types.InvokeAsyncOutput, table
    invokeWithResponseStream: function(Client, types.InvokeWithResponseStreamInput): types.InvokeWithResponseStreamOutput, table
    listAliases: function(Client, types.ListAliasesInput): types.ListAliasesOutput, table
    listCapacityProviders: function(Client, types.ListCapacityProvidersInput): types.ListCapacityProvidersOutput, table
    listCodeSigningConfigs: function(Client, types.ListCodeSigningConfigsInput): types.ListCodeSigningConfigsOutput, table
    listDurableExecutionsByFunction: function(Client, types.ListDurableExecutionsByFunctionInput): types.ListDurableExecutionsByFunctionOutput, table
    listEventSourceMappings: function(Client, types.ListEventSourceMappingsInput): types.ListEventSourceMappingsOutput, table
    listFunctionEventInvokeConfigs: function(Client, types.ListFunctionEventInvokeConfigsInput): types.ListFunctionEventInvokeConfigsOutput, table
    listFunctions: function(Client, types.ListFunctionsInput): types.ListFunctionsOutput, table
    listFunctionsByCodeSigningConfig: function(Client, types.ListFunctionsByCodeSigningConfigInput): types.ListFunctionsByCodeSigningConfigOutput, table
    listFunctionUrlConfigs: function(Client, types.ListFunctionUrlConfigsInput): types.ListFunctionUrlConfigsOutput, table
    listFunctionVersionsByCapacityProvider: function(Client, types.ListFunctionVersionsByCapacityProviderInput): types.ListFunctionVersionsByCapacityProviderOutput, table
    listLayers: function(Client, types.ListLayersInput): types.ListLayersOutput, table
    listLayerVersions: function(Client, types.ListLayerVersionsInput): types.ListLayerVersionsOutput, table
    listProvisionedConcurrencyConfigs: function(Client, types.ListProvisionedConcurrencyConfigsInput): types.ListProvisionedConcurrencyConfigsOutput, table
    listTags: function(Client, types.ListTagsInput): types.ListTagsOutput, table
    listVersionsByFunction: function(Client, types.ListVersionsByFunctionInput): types.ListVersionsByFunctionOutput, table
    publishLayerVersion: function(Client, types.PublishLayerVersionInput): types.PublishLayerVersionOutput, table
    publishVersion: function(Client, types.PublishVersionInput): types.PublishVersionOutput, table
    putFunctionCodeSigningConfig: function(Client, types.PutFunctionCodeSigningConfigInput): types.PutFunctionCodeSigningConfigOutput, table
    putFunctionConcurrency: function(Client, types.PutFunctionConcurrencyInput): types.PutFunctionConcurrencyOutput, table
    putFunctionEventInvokeConfig: function(Client, types.PutFunctionEventInvokeConfigInput): types.PutFunctionEventInvokeConfigOutput, table
    putFunctionRecursionConfig: function(Client, types.PutFunctionRecursionConfigInput): types.PutFunctionRecursionConfigOutput, table
    putFunctionScalingConfig: function(Client, types.PutFunctionScalingConfigInput): types.PutFunctionScalingConfigOutput, table
    putProvisionedConcurrencyConfig: function(Client, types.PutProvisionedConcurrencyConfigInput): types.PutProvisionedConcurrencyConfigOutput, table
    putRuntimeManagementConfig: function(Client, types.PutRuntimeManagementConfigInput): types.PutRuntimeManagementConfigOutput, table
    removeLayerVersionPermission: function(Client, types.RemoveLayerVersionPermissionInput): types.RemoveLayerVersionPermissionOutput, table
    removePermission: function(Client, types.RemovePermissionInput): types.RemovePermissionOutput, table
    sendDurableExecutionCallbackFailure: function(Client, types.SendDurableExecutionCallbackFailureInput): types.SendDurableExecutionCallbackFailureOutput, table
    sendDurableExecutionCallbackHeartbeat: function(Client, types.SendDurableExecutionCallbackHeartbeatInput): types.SendDurableExecutionCallbackHeartbeatOutput, table
    sendDurableExecutionCallbackSuccess: function(Client, types.SendDurableExecutionCallbackSuccessInput): types.SendDurableExecutionCallbackSuccessOutput, table
    stopDurableExecution: function(Client, types.StopDurableExecutionInput): types.StopDurableExecutionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAlias: function(Client, types.UpdateAliasInput): types.UpdateAliasOutput, table
    updateCapacityProvider: function(Client, types.UpdateCapacityProviderInput): types.UpdateCapacityProviderOutput, table
    updateCodeSigningConfig: function(Client, types.UpdateCodeSigningConfigInput): types.UpdateCodeSigningConfigOutput, table
    updateEventSourceMapping: function(Client, types.UpdateEventSourceMappingInput): types.UpdateEventSourceMappingOutput, table
    updateFunctionCode: function(Client, types.UpdateFunctionCodeInput): types.UpdateFunctionCodeOutput, table
    updateFunctionConfiguration: function(Client, types.UpdateFunctionConfigurationInput): types.UpdateFunctionConfigurationOutput, table
    updateFunctionEventInvokeConfig: function(Client, types.UpdateFunctionEventInvokeConfigInput): types.UpdateFunctionEventInvokeConfigOutput, table
    updateFunctionUrlConfig: function(Client, types.UpdateFunctionUrlConfigInput): types.UpdateFunctionUrlConfigOutput, table
end

local record M
    new: function(table): Client
end

return M
