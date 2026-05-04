local types = require("appsync.types")

local record Client
    associateApi: function(Client, types.AssociateApiInput): types.AssociateApiOutput, table
    associateMergedGraphqlApi: function(Client, types.AssociateMergedGraphqlApiInput): types.AssociateMergedGraphqlApiOutput, table
    associateSourceGraphqlApi: function(Client, types.AssociateSourceGraphqlApiInput): types.AssociateSourceGraphqlApiOutput, table
    createApi: function(Client, types.CreateApiInput): types.CreateApiOutput, table
    createApiCache: function(Client, types.CreateApiCacheInput): types.CreateApiCacheOutput, table
    createApiKey: function(Client, types.CreateApiKeyInput): types.CreateApiKeyOutput, table
    createChannelNamespace: function(Client, types.CreateChannelNamespaceInput): types.CreateChannelNamespaceOutput, table
    createDataSource: function(Client, types.CreateDataSourceInput): types.CreateDataSourceOutput, table
    createDomainName: function(Client, types.CreateDomainNameInput): types.CreateDomainNameOutput, table
    createFunction: function(Client, types.CreateFunctionInput): types.CreateFunctionOutput, table
    createGraphqlApi: function(Client, types.CreateGraphqlApiInput): types.CreateGraphqlApiOutput, table
    createResolver: function(Client, types.CreateResolverInput): types.CreateResolverOutput, table
    createType: function(Client, types.CreateTypeInput): types.CreateTypeOutput, table
    deleteApi: function(Client, types.DeleteApiInput): types.DeleteApiOutput, table
    deleteApiCache: function(Client, types.DeleteApiCacheInput): types.DeleteApiCacheOutput, table
    deleteApiKey: function(Client, types.DeleteApiKeyInput): types.DeleteApiKeyOutput, table
    deleteChannelNamespace: function(Client, types.DeleteChannelNamespaceInput): types.DeleteChannelNamespaceOutput, table
    deleteDataSource: function(Client, types.DeleteDataSourceInput): types.DeleteDataSourceOutput, table
    deleteDomainName: function(Client, types.DeleteDomainNameInput): types.DeleteDomainNameOutput, table
    deleteFunction: function(Client, types.DeleteFunctionInput): types.DeleteFunctionOutput, table
    deleteGraphqlApi: function(Client, types.DeleteGraphqlApiInput): types.DeleteGraphqlApiOutput, table
    deleteResolver: function(Client, types.DeleteResolverInput): types.DeleteResolverOutput, table
    deleteType: function(Client, types.DeleteTypeInput): types.DeleteTypeOutput, table
    disassociateApi: function(Client, types.DisassociateApiInput): types.DisassociateApiOutput, table
    disassociateMergedGraphqlApi: function(Client, types.DisassociateMergedGraphqlApiInput): types.DisassociateMergedGraphqlApiOutput, table
    disassociateSourceGraphqlApi: function(Client, types.DisassociateSourceGraphqlApiInput): types.DisassociateSourceGraphqlApiOutput, table
    evaluateCode: function(Client, types.EvaluateCodeInput): types.EvaluateCodeOutput, table
    evaluateMappingTemplate: function(Client, types.EvaluateMappingTemplateInput): types.EvaluateMappingTemplateOutput, table
    flushApiCache: function(Client, types.FlushApiCacheInput): types.FlushApiCacheOutput, table
    getApi: function(Client, types.GetApiInput): types.GetApiOutput, table
    getApiAssociation: function(Client, types.GetApiAssociationInput): types.GetApiAssociationOutput, table
    getApiCache: function(Client, types.GetApiCacheInput): types.GetApiCacheOutput, table
    getChannelNamespace: function(Client, types.GetChannelNamespaceInput): types.GetChannelNamespaceOutput, table
    getDataSource: function(Client, types.GetDataSourceInput): types.GetDataSourceOutput, table
    getDataSourceIntrospection: function(Client, types.GetDataSourceIntrospectionInput): types.GetDataSourceIntrospectionOutput, table
    getDomainName: function(Client, types.GetDomainNameInput): types.GetDomainNameOutput, table
    getFunction: function(Client, types.GetFunctionInput): types.GetFunctionOutput, table
    getGraphqlApi: function(Client, types.GetGraphqlApiInput): types.GetGraphqlApiOutput, table
    getGraphqlApiEnvironmentVariables: function(Client, types.GetGraphqlApiEnvironmentVariablesInput): types.GetGraphqlApiEnvironmentVariablesOutput, table
    getIntrospectionSchema: function(Client, types.GetIntrospectionSchemaInput): types.GetIntrospectionSchemaOutput, table
    getResolver: function(Client, types.GetResolverInput): types.GetResolverOutput, table
    getSchemaCreationStatus: function(Client, types.GetSchemaCreationStatusInput): types.GetSchemaCreationStatusOutput, table
    getSourceApiAssociation: function(Client, types.GetSourceApiAssociationInput): types.GetSourceApiAssociationOutput, table
    getType: function(Client, types.GetTypeInput): types.GetTypeOutput, table
    listApiKeys: function(Client, types.ListApiKeysInput): types.ListApiKeysOutput, table
    listApis: function(Client, types.ListApisInput): types.ListApisOutput, table
    listChannelNamespaces: function(Client, types.ListChannelNamespacesInput): types.ListChannelNamespacesOutput, table
    listDataSources: function(Client, types.ListDataSourcesInput): types.ListDataSourcesOutput, table
    listDomainNames: function(Client, types.ListDomainNamesInput): types.ListDomainNamesOutput, table
    listFunctions: function(Client, types.ListFunctionsInput): types.ListFunctionsOutput, table
    listGraphqlApis: function(Client, types.ListGraphqlApisInput): types.ListGraphqlApisOutput, table
    listResolvers: function(Client, types.ListResolversInput): types.ListResolversOutput, table
    listResolversByFunction: function(Client, types.ListResolversByFunctionInput): types.ListResolversByFunctionOutput, table
    listSourceApiAssociations: function(Client, types.ListSourceApiAssociationsInput): types.ListSourceApiAssociationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTypes: function(Client, types.ListTypesInput): types.ListTypesOutput, table
    listTypesByAssociation: function(Client, types.ListTypesByAssociationInput): types.ListTypesByAssociationOutput, table
    putGraphqlApiEnvironmentVariables: function(Client, types.PutGraphqlApiEnvironmentVariablesInput): types.PutGraphqlApiEnvironmentVariablesOutput, table
    startDataSourceIntrospection: function(Client, types.StartDataSourceIntrospectionInput): types.StartDataSourceIntrospectionOutput, table
    startSchemaCreation: function(Client, types.StartSchemaCreationInput): types.StartSchemaCreationOutput, table
    startSchemaMerge: function(Client, types.StartSchemaMergeInput): types.StartSchemaMergeOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateApi: function(Client, types.UpdateApiInput): types.UpdateApiOutput, table
    updateApiCache: function(Client, types.UpdateApiCacheInput): types.UpdateApiCacheOutput, table
    updateApiKey: function(Client, types.UpdateApiKeyInput): types.UpdateApiKeyOutput, table
    updateChannelNamespace: function(Client, types.UpdateChannelNamespaceInput): types.UpdateChannelNamespaceOutput, table
    updateDataSource: function(Client, types.UpdateDataSourceInput): types.UpdateDataSourceOutput, table
    updateDomainName: function(Client, types.UpdateDomainNameInput): types.UpdateDomainNameOutput, table
    updateFunction: function(Client, types.UpdateFunctionInput): types.UpdateFunctionOutput, table
    updateGraphqlApi: function(Client, types.UpdateGraphqlApiInput): types.UpdateGraphqlApiOutput, table
    updateResolver: function(Client, types.UpdateResolverInput): types.UpdateResolverOutput, table
    updateSourceApiAssociation: function(Client, types.UpdateSourceApiAssociationInput): types.UpdateSourceApiAssociationOutput, table
    updateType: function(Client, types.UpdateTypeInput): types.UpdateTypeOutput, table
end

local record M
    new: function(table): Client
end

return M
