local types = require("licensemanager.types")

local record Client
    acceptGrant: function(Client, types.AcceptGrantInput): types.AcceptGrantOutput, table
    checkInLicense: function(Client, types.CheckInLicenseInput): types.CheckInLicenseOutput, table
    checkoutBorrowLicense: function(Client, types.CheckoutBorrowLicenseInput): types.CheckoutBorrowLicenseOutput, table
    checkoutLicense: function(Client, types.CheckoutLicenseInput): types.CheckoutLicenseOutput, table
    createGrant: function(Client, types.CreateGrantInput): types.CreateGrantOutput, table
    createGrantVersion: function(Client, types.CreateGrantVersionInput): types.CreateGrantVersionOutput, table
    createLicense: function(Client, types.CreateLicenseInput): types.CreateLicenseOutput, table
    createLicenseAssetGroup: function(Client, types.CreateLicenseAssetGroupInput): types.CreateLicenseAssetGroupOutput, table
    createLicenseAssetRuleset: function(Client, types.CreateLicenseAssetRulesetInput): types.CreateLicenseAssetRulesetOutput, table
    createLicenseConfiguration: function(Client, types.CreateLicenseConfigurationInput): types.CreateLicenseConfigurationOutput, table
    createLicenseConversionTaskForResource: function(Client, types.CreateLicenseConversionTaskForResourceInput): types.CreateLicenseConversionTaskForResourceOutput, table
    createLicenseManagerReportGenerator: function(Client, types.CreateLicenseManagerReportGeneratorInput): types.CreateLicenseManagerReportGeneratorOutput, table
    createLicenseVersion: function(Client, types.CreateLicenseVersionInput): types.CreateLicenseVersionOutput, table
    createToken: function(Client, types.CreateTokenInput): types.CreateTokenOutput, table
    deleteGrant: function(Client, types.DeleteGrantInput): types.DeleteGrantOutput, table
    deleteLicense: function(Client, types.DeleteLicenseInput): types.DeleteLicenseOutput, table
    deleteLicenseAssetGroup: function(Client, types.DeleteLicenseAssetGroupInput): types.DeleteLicenseAssetGroupOutput, table
    deleteLicenseAssetRuleset: function(Client, types.DeleteLicenseAssetRulesetInput): types.DeleteLicenseAssetRulesetOutput, table
    deleteLicenseConfiguration: function(Client, types.DeleteLicenseConfigurationInput): types.DeleteLicenseConfigurationOutput, table
    deleteLicenseManagerReportGenerator: function(Client, types.DeleteLicenseManagerReportGeneratorInput): types.DeleteLicenseManagerReportGeneratorOutput, table
    deleteToken: function(Client, types.DeleteTokenInput): types.DeleteTokenOutput, table
    extendLicenseConsumption: function(Client, types.ExtendLicenseConsumptionInput): types.ExtendLicenseConsumptionOutput, table
    getAccessToken: function(Client, types.GetAccessTokenInput): types.GetAccessTokenOutput, table
    getGrant: function(Client, types.GetGrantInput): types.GetGrantOutput, table
    getLicense: function(Client, types.GetLicenseInput): types.GetLicenseOutput, table
    getLicenseAssetGroup: function(Client, types.GetLicenseAssetGroupInput): types.GetLicenseAssetGroupOutput, table
    getLicenseAssetRuleset: function(Client, types.GetLicenseAssetRulesetInput): types.GetLicenseAssetRulesetOutput, table
    getLicenseConfiguration: function(Client, types.GetLicenseConfigurationInput): types.GetLicenseConfigurationOutput, table
    getLicenseConversionTask: function(Client, types.GetLicenseConversionTaskInput): types.GetLicenseConversionTaskOutput, table
    getLicenseManagerReportGenerator: function(Client, types.GetLicenseManagerReportGeneratorInput): types.GetLicenseManagerReportGeneratorOutput, table
    getLicenseUsage: function(Client, types.GetLicenseUsageInput): types.GetLicenseUsageOutput, table
    getServiceSettings: function(Client, types.GetServiceSettingsInput): types.GetServiceSettingsOutput, table
    listAssetsForLicenseAssetGroup: function(Client, types.ListAssetsForLicenseAssetGroupInput): types.ListAssetsForLicenseAssetGroupOutput, table
    listAssociationsForLicenseConfiguration: function(Client, types.ListAssociationsForLicenseConfigurationInput): types.ListAssociationsForLicenseConfigurationOutput, table
    listDistributedGrants: function(Client, types.ListDistributedGrantsInput): types.ListDistributedGrantsOutput, table
    listFailuresForLicenseConfigurationOperations: function(Client, types.ListFailuresForLicenseConfigurationOperationsInput): types.ListFailuresForLicenseConfigurationOperationsOutput, table
    listLicenseAssetGroups: function(Client, types.ListLicenseAssetGroupsInput): types.ListLicenseAssetGroupsOutput, table
    listLicenseAssetRulesets: function(Client, types.ListLicenseAssetRulesetsInput): types.ListLicenseAssetRulesetsOutput, table
    listLicenseConfigurations: function(Client, types.ListLicenseConfigurationsInput): types.ListLicenseConfigurationsOutput, table
    listLicenseConfigurationsForOrganization: function(Client, types.ListLicenseConfigurationsForOrganizationInput): types.ListLicenseConfigurationsForOrganizationOutput, table
    listLicenseConversionTasks: function(Client, types.ListLicenseConversionTasksInput): types.ListLicenseConversionTasksOutput, table
    listLicenseManagerReportGenerators: function(Client, types.ListLicenseManagerReportGeneratorsInput): types.ListLicenseManagerReportGeneratorsOutput, table
    listLicenses: function(Client, types.ListLicensesInput): types.ListLicensesOutput, table
    listLicenseSpecificationsForResource: function(Client, types.ListLicenseSpecificationsForResourceInput): types.ListLicenseSpecificationsForResourceOutput, table
    listLicenseVersions: function(Client, types.ListLicenseVersionsInput): types.ListLicenseVersionsOutput, table
    listReceivedGrants: function(Client, types.ListReceivedGrantsInput): types.ListReceivedGrantsOutput, table
    listReceivedGrantsForOrganization: function(Client, types.ListReceivedGrantsForOrganizationInput): types.ListReceivedGrantsForOrganizationOutput, table
    listReceivedLicenses: function(Client, types.ListReceivedLicensesInput): types.ListReceivedLicensesOutput, table
    listReceivedLicensesForOrganization: function(Client, types.ListReceivedLicensesForOrganizationInput): types.ListReceivedLicensesForOrganizationOutput, table
    listResourceInventory: function(Client, types.ListResourceInventoryInput): types.ListResourceInventoryOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTokens: function(Client, types.ListTokensInput): types.ListTokensOutput, table
    listUsageForLicenseConfiguration: function(Client, types.ListUsageForLicenseConfigurationInput): types.ListUsageForLicenseConfigurationOutput, table
    rejectGrant: function(Client, types.RejectGrantInput): types.RejectGrantOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateLicenseAssetGroup: function(Client, types.UpdateLicenseAssetGroupInput): types.UpdateLicenseAssetGroupOutput, table
    updateLicenseAssetRuleset: function(Client, types.UpdateLicenseAssetRulesetInput): types.UpdateLicenseAssetRulesetOutput, table
    updateLicenseConfiguration: function(Client, types.UpdateLicenseConfigurationInput): types.UpdateLicenseConfigurationOutput, table
    updateLicenseManagerReportGenerator: function(Client, types.UpdateLicenseManagerReportGeneratorInput): types.UpdateLicenseManagerReportGeneratorOutput, table
    updateLicenseSpecificationsForResource: function(Client, types.UpdateLicenseSpecificationsForResourceInput): types.UpdateLicenseSpecificationsForResourceOutput, table
    updateServiceSettings: function(Client, types.UpdateServiceSettingsInput): types.UpdateServiceSettingsOutput, table
end

local record M
    new: function(table): Client
end

return M
