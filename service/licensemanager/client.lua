local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("licensemanager.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("licensemanager.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSLicenseManager"
    cfg.signing_name = "license-manager"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:acceptGrant(input, options)
    return self:invokeOperation(input, {
        name = "AcceptGrant",
        input_schema = types.AcceptGrantInput,
        output_schema = types.AcceptGrantOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:checkInLicense(input, options)
    return self:invokeOperation(input, {
        name = "CheckInLicense",
        input_schema = types.CheckInLicenseInput,
        output_schema = types.CheckInLicenseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:checkoutBorrowLicense(input, options)
    return self:invokeOperation(input, {
        name = "CheckoutBorrowLicense",
        input_schema = types.CheckoutBorrowLicenseInput,
        output_schema = types.CheckoutBorrowLicenseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:checkoutLicense(input, options)
    return self:invokeOperation(input, {
        name = "CheckoutLicense",
        input_schema = types.CheckoutLicenseInput,
        output_schema = types.CheckoutLicenseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createGrant(input, options)
    return self:invokeOperation(input, {
        name = "CreateGrant",
        input_schema = types.CreateGrantInput,
        output_schema = types.CreateGrantOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createGrantVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateGrantVersion",
        input_schema = types.CreateGrantVersionInput,
        output_schema = types.CreateGrantVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLicense(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicense",
        input_schema = types.CreateLicenseInput,
        output_schema = types.CreateLicenseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLicenseAssetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseAssetGroup",
        input_schema = types.CreateLicenseAssetGroupInput,
        output_schema = types.CreateLicenseAssetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLicenseAssetRuleset(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseAssetRuleset",
        input_schema = types.CreateLicenseAssetRulesetInput,
        output_schema = types.CreateLicenseAssetRulesetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseConfiguration",
        input_schema = types.CreateLicenseConfigurationInput,
        output_schema = types.CreateLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLicenseConversionTaskForResource(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseConversionTaskForResource",
        input_schema = types.CreateLicenseConversionTaskForResourceInput,
        output_schema = types.CreateLicenseConversionTaskForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLicenseManagerReportGenerator(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseManagerReportGenerator",
        input_schema = types.CreateLicenseManagerReportGeneratorInput,
        output_schema = types.CreateLicenseManagerReportGeneratorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLicenseVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseVersion",
        input_schema = types.CreateLicenseVersionInput,
        output_schema = types.CreateLicenseVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateToken",
        input_schema = types.CreateTokenInput,
        output_schema = types.CreateTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGrant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGrant",
        input_schema = types.DeleteGrantInput,
        output_schema = types.DeleteGrantOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLicense(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicense",
        input_schema = types.DeleteLicenseInput,
        output_schema = types.DeleteLicenseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLicenseAssetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicenseAssetGroup",
        input_schema = types.DeleteLicenseAssetGroupInput,
        output_schema = types.DeleteLicenseAssetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLicenseAssetRuleset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicenseAssetRuleset",
        input_schema = types.DeleteLicenseAssetRulesetInput,
        output_schema = types.DeleteLicenseAssetRulesetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicenseConfiguration",
        input_schema = types.DeleteLicenseConfigurationInput,
        output_schema = types.DeleteLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLicenseManagerReportGenerator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicenseManagerReportGenerator",
        input_schema = types.DeleteLicenseManagerReportGeneratorInput,
        output_schema = types.DeleteLicenseManagerReportGeneratorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteToken",
        input_schema = types.DeleteTokenInput,
        output_schema = types.DeleteTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:extendLicenseConsumption(input, options)
    return self:invokeOperation(input, {
        name = "ExtendLicenseConsumption",
        input_schema = types.ExtendLicenseConsumptionInput,
        output_schema = types.ExtendLicenseConsumptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessToken",
        input_schema = types.GetAccessTokenInput,
        output_schema = types.GetAccessTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getGrant(input, options)
    return self:invokeOperation(input, {
        name = "GetGrant",
        input_schema = types.GetGrantInput,
        output_schema = types.GetGrantOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLicense(input, options)
    return self:invokeOperation(input, {
        name = "GetLicense",
        input_schema = types.GetLicenseInput,
        output_schema = types.GetLicenseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLicenseAssetGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseAssetGroup",
        input_schema = types.GetLicenseAssetGroupInput,
        output_schema = types.GetLicenseAssetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLicenseAssetRuleset(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseAssetRuleset",
        input_schema = types.GetLicenseAssetRulesetInput,
        output_schema = types.GetLicenseAssetRulesetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseConfiguration",
        input_schema = types.GetLicenseConfigurationInput,
        output_schema = types.GetLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLicenseConversionTask(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseConversionTask",
        input_schema = types.GetLicenseConversionTaskInput,
        output_schema = types.GetLicenseConversionTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLicenseManagerReportGenerator(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseManagerReportGenerator",
        input_schema = types.GetLicenseManagerReportGeneratorInput,
        output_schema = types.GetLicenseManagerReportGeneratorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLicenseUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseUsage",
        input_schema = types.GetLicenseUsageInput,
        output_schema = types.GetLicenseUsageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServiceSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceSettings",
        input_schema = types.GetServiceSettingsInput,
        output_schema = types.GetServiceSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAssetsForLicenseAssetGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetsForLicenseAssetGroup",
        input_schema = types.ListAssetsForLicenseAssetGroupInput,
        output_schema = types.ListAssetsForLicenseAssetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAssociationsForLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociationsForLicenseConfiguration",
        input_schema = types.ListAssociationsForLicenseConfigurationInput,
        output_schema = types.ListAssociationsForLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDistributedGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributedGrants",
        input_schema = types.ListDistributedGrantsInput,
        output_schema = types.ListDistributedGrantsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFailuresForLicenseConfigurationOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListFailuresForLicenseConfigurationOperations",
        input_schema = types.ListFailuresForLicenseConfigurationOperationsInput,
        output_schema = types.ListFailuresForLicenseConfigurationOperationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLicenseAssetGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseAssetGroups",
        input_schema = types.ListLicenseAssetGroupsInput,
        output_schema = types.ListLicenseAssetGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLicenseAssetRulesets(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseAssetRulesets",
        input_schema = types.ListLicenseAssetRulesetsInput,
        output_schema = types.ListLicenseAssetRulesetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLicenseConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseConfigurations",
        input_schema = types.ListLicenseConfigurationsInput,
        output_schema = types.ListLicenseConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLicenseConfigurationsForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseConfigurationsForOrganization",
        input_schema = types.ListLicenseConfigurationsForOrganizationInput,
        output_schema = types.ListLicenseConfigurationsForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLicenseConversionTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseConversionTasks",
        input_schema = types.ListLicenseConversionTasksInput,
        output_schema = types.ListLicenseConversionTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLicenseManagerReportGenerators(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseManagerReportGenerators",
        input_schema = types.ListLicenseManagerReportGeneratorsInput,
        output_schema = types.ListLicenseManagerReportGeneratorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLicenses(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenses",
        input_schema = types.ListLicensesInput,
        output_schema = types.ListLicensesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLicenseSpecificationsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseSpecificationsForResource",
        input_schema = types.ListLicenseSpecificationsForResourceInput,
        output_schema = types.ListLicenseSpecificationsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLicenseVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseVersions",
        input_schema = types.ListLicenseVersionsInput,
        output_schema = types.ListLicenseVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listReceivedGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListReceivedGrants",
        input_schema = types.ListReceivedGrantsInput,
        output_schema = types.ListReceivedGrantsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listReceivedGrantsForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListReceivedGrantsForOrganization",
        input_schema = types.ListReceivedGrantsForOrganizationInput,
        output_schema = types.ListReceivedGrantsForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listReceivedLicenses(input, options)
    return self:invokeOperation(input, {
        name = "ListReceivedLicenses",
        input_schema = types.ListReceivedLicensesInput,
        output_schema = types.ListReceivedLicensesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listReceivedLicensesForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListReceivedLicensesForOrganization",
        input_schema = types.ListReceivedLicensesForOrganizationInput,
        output_schema = types.ListReceivedLicensesForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourceInventory(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceInventory",
        input_schema = types.ListResourceInventoryInput,
        output_schema = types.ListResourceInventoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTokens(input, options)
    return self:invokeOperation(input, {
        name = "ListTokens",
        input_schema = types.ListTokensInput,
        output_schema = types.ListTokensOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listUsageForLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ListUsageForLicenseConfiguration",
        input_schema = types.ListUsageForLicenseConfigurationInput,
        output_schema = types.ListUsageForLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rejectGrant(input, options)
    return self:invokeOperation(input, {
        name = "RejectGrant",
        input_schema = types.RejectGrantInput,
        output_schema = types.RejectGrantOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLicenseAssetGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLicenseAssetGroup",
        input_schema = types.UpdateLicenseAssetGroupInput,
        output_schema = types.UpdateLicenseAssetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLicenseAssetRuleset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLicenseAssetRuleset",
        input_schema = types.UpdateLicenseAssetRulesetInput,
        output_schema = types.UpdateLicenseAssetRulesetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLicenseConfiguration",
        input_schema = types.UpdateLicenseConfigurationInput,
        output_schema = types.UpdateLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLicenseManagerReportGenerator(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLicenseManagerReportGenerator",
        input_schema = types.UpdateLicenseManagerReportGeneratorInput,
        output_schema = types.UpdateLicenseManagerReportGeneratorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLicenseSpecificationsForResource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLicenseSpecificationsForResource",
        input_schema = types.UpdateLicenseSpecificationsForResourceInput,
        output_schema = types.UpdateLicenseSpecificationsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServiceSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSettings",
        input_schema = types.UpdateServiceSettingsInput,
        output_schema = types.UpdateServiceSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
