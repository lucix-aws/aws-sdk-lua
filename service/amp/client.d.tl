local types = require("amp.types")

local record Client
    createAlertManagerDefinition: function(Client, types.CreateAlertManagerDefinitionInput): types.CreateAlertManagerDefinitionOutput, table
    createAnomalyDetector: function(Client, types.CreateAnomalyDetectorInput): types.CreateAnomalyDetectorOutput, table
    createLoggingConfiguration: function(Client, types.CreateLoggingConfigurationInput): types.CreateLoggingConfigurationOutput, table
    createQueryLoggingConfiguration: function(Client, types.CreateQueryLoggingConfigurationInput): types.CreateQueryLoggingConfigurationOutput, table
    createRuleGroupsNamespace: function(Client, types.CreateRuleGroupsNamespaceInput): types.CreateRuleGroupsNamespaceOutput, table
    createScraper: function(Client, types.CreateScraperInput): types.CreateScraperOutput, table
    createWorkspace: function(Client, types.CreateWorkspaceInput): types.CreateWorkspaceOutput, table
    deleteAlertManagerDefinition: function(Client, types.DeleteAlertManagerDefinitionInput): types.DeleteAlertManagerDefinitionOutput, table
    deleteAnomalyDetector: function(Client, types.DeleteAnomalyDetectorInput): types.DeleteAnomalyDetectorOutput, table
    deleteLoggingConfiguration: function(Client, types.DeleteLoggingConfigurationInput): types.DeleteLoggingConfigurationOutput, table
    deleteQueryLoggingConfiguration: function(Client, types.DeleteQueryLoggingConfigurationInput): types.DeleteQueryLoggingConfigurationOutput, table
    deleteResourcePolicy: function(Client, types.DeleteResourcePolicyInput): types.DeleteResourcePolicyOutput, table
    deleteRuleGroupsNamespace: function(Client, types.DeleteRuleGroupsNamespaceInput): types.DeleteRuleGroupsNamespaceOutput, table
    deleteScraper: function(Client, types.DeleteScraperInput): types.DeleteScraperOutput, table
    deleteScraperLoggingConfiguration: function(Client, types.DeleteScraperLoggingConfigurationInput): types.DeleteScraperLoggingConfigurationOutput, table
    deleteWorkspace: function(Client, types.DeleteWorkspaceInput): types.DeleteWorkspaceOutput, table
    describeAlertManagerDefinition: function(Client, types.DescribeAlertManagerDefinitionInput): types.DescribeAlertManagerDefinitionOutput, table
    describeAnomalyDetector: function(Client, types.DescribeAnomalyDetectorInput): types.DescribeAnomalyDetectorOutput, table
    describeLoggingConfiguration: function(Client, types.DescribeLoggingConfigurationInput): types.DescribeLoggingConfigurationOutput, table
    describeQueryLoggingConfiguration: function(Client, types.DescribeQueryLoggingConfigurationInput): types.DescribeQueryLoggingConfigurationOutput, table
    describeResourcePolicy: function(Client, types.DescribeResourcePolicyInput): types.DescribeResourcePolicyOutput, table
    describeRuleGroupsNamespace: function(Client, types.DescribeRuleGroupsNamespaceInput): types.DescribeRuleGroupsNamespaceOutput, table
    describeScraper: function(Client, types.DescribeScraperInput): types.DescribeScraperOutput, table
    describeScraperLoggingConfiguration: function(Client, types.DescribeScraperLoggingConfigurationInput): types.DescribeScraperLoggingConfigurationOutput, table
    describeWorkspace: function(Client, types.DescribeWorkspaceInput): types.DescribeWorkspaceOutput, table
    describeWorkspaceConfiguration: function(Client, types.DescribeWorkspaceConfigurationInput): types.DescribeWorkspaceConfigurationOutput, table
    getDefaultScraperConfiguration: function(Client, types.GetDefaultScraperConfigurationInput): types.GetDefaultScraperConfigurationOutput, table
    listAnomalyDetectors: function(Client, types.ListAnomalyDetectorsInput): types.ListAnomalyDetectorsOutput, table
    listRuleGroupsNamespaces: function(Client, types.ListRuleGroupsNamespacesInput): types.ListRuleGroupsNamespacesOutput, table
    listScrapers: function(Client, types.ListScrapersInput): types.ListScrapersOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listWorkspaces: function(Client, types.ListWorkspacesInput): types.ListWorkspacesOutput, table
    putAlertManagerDefinition: function(Client, types.PutAlertManagerDefinitionInput): types.PutAlertManagerDefinitionOutput, table
    putAnomalyDetector: function(Client, types.PutAnomalyDetectorInput): types.PutAnomalyDetectorOutput, table
    putResourcePolicy: function(Client, types.PutResourcePolicyInput): types.PutResourcePolicyOutput, table
    putRuleGroupsNamespace: function(Client, types.PutRuleGroupsNamespaceInput): types.PutRuleGroupsNamespaceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateLoggingConfiguration: function(Client, types.UpdateLoggingConfigurationInput): types.UpdateLoggingConfigurationOutput, table
    updateQueryLoggingConfiguration: function(Client, types.UpdateQueryLoggingConfigurationInput): types.UpdateQueryLoggingConfigurationOutput, table
    updateScraper: function(Client, types.UpdateScraperInput): types.UpdateScraperOutput, table
    updateScraperLoggingConfiguration: function(Client, types.UpdateScraperLoggingConfigurationInput): types.UpdateScraperLoggingConfigurationOutput, table
    updateWorkspaceAlias: function(Client, types.UpdateWorkspaceAliasInput): types.UpdateWorkspaceAliasOutput, table
    updateWorkspaceConfiguration: function(Client, types.UpdateWorkspaceConfigurationInput): types.UpdateWorkspaceConfigurationOutput, table
end

local record M
    new: function(table): Client
end

return M
