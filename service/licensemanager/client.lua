local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("licensemanager.endpoint_rules")
local schemas = require("licensemanager.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSLicenseManager"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "license-manager", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:acceptGrant(input, options)
    return self:invokeOperation(input, {
        name = "AcceptGrant",
        input_schema = schemas.AcceptGrantInput,
        output_schema = schemas.AcceptGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkInLicense(input, options)
    return self:invokeOperation(input, {
        name = "CheckInLicense",
        input_schema = schemas.CheckInLicenseInput,
        output_schema = schemas.CheckInLicenseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkoutBorrowLicense(input, options)
    return self:invokeOperation(input, {
        name = "CheckoutBorrowLicense",
        input_schema = schemas.CheckoutBorrowLicenseInput,
        output_schema = schemas.CheckoutBorrowLicenseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkoutLicense(input, options)
    return self:invokeOperation(input, {
        name = "CheckoutLicense",
        input_schema = schemas.CheckoutLicenseInput,
        output_schema = schemas.CheckoutLicenseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGrant(input, options)
    return self:invokeOperation(input, {
        name = "CreateGrant",
        input_schema = schemas.CreateGrantInput,
        output_schema = schemas.CreateGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGrantVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateGrantVersion",
        input_schema = schemas.CreateGrantVersionInput,
        output_schema = schemas.CreateGrantVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLicense(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicense",
        input_schema = schemas.CreateLicenseInput,
        output_schema = schemas.CreateLicenseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLicenseAssetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseAssetGroup",
        input_schema = schemas.CreateLicenseAssetGroupInput,
        output_schema = schemas.CreateLicenseAssetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLicenseAssetRuleset(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseAssetRuleset",
        input_schema = schemas.CreateLicenseAssetRulesetInput,
        output_schema = schemas.CreateLicenseAssetRulesetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseConfiguration",
        input_schema = schemas.CreateLicenseConfigurationInput,
        output_schema = schemas.CreateLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLicenseConversionTaskForResource(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseConversionTaskForResource",
        input_schema = schemas.CreateLicenseConversionTaskForResourceInput,
        output_schema = schemas.CreateLicenseConversionTaskForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLicenseManagerReportGenerator(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseManagerReportGenerator",
        input_schema = schemas.CreateLicenseManagerReportGeneratorInput,
        output_schema = schemas.CreateLicenseManagerReportGeneratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLicenseVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseVersion",
        input_schema = schemas.CreateLicenseVersionInput,
        output_schema = schemas.CreateLicenseVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateToken",
        input_schema = schemas.CreateTokenInput,
        output_schema = schemas.CreateTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGrant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGrant",
        input_schema = schemas.DeleteGrantInput,
        output_schema = schemas.DeleteGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLicense(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicense",
        input_schema = schemas.DeleteLicenseInput,
        output_schema = schemas.DeleteLicenseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLicenseAssetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicenseAssetGroup",
        input_schema = schemas.DeleteLicenseAssetGroupInput,
        output_schema = schemas.DeleteLicenseAssetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLicenseAssetRuleset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicenseAssetRuleset",
        input_schema = schemas.DeleteLicenseAssetRulesetInput,
        output_schema = schemas.DeleteLicenseAssetRulesetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicenseConfiguration",
        input_schema = schemas.DeleteLicenseConfigurationInput,
        output_schema = schemas.DeleteLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLicenseManagerReportGenerator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicenseManagerReportGenerator",
        input_schema = schemas.DeleteLicenseManagerReportGeneratorInput,
        output_schema = schemas.DeleteLicenseManagerReportGeneratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteToken",
        input_schema = schemas.DeleteTokenInput,
        output_schema = schemas.DeleteTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:extendLicenseConsumption(input, options)
    return self:invokeOperation(input, {
        name = "ExtendLicenseConsumption",
        input_schema = schemas.ExtendLicenseConsumptionInput,
        output_schema = schemas.ExtendLicenseConsumptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessToken",
        input_schema = schemas.GetAccessTokenInput,
        output_schema = schemas.GetAccessTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGrant(input, options)
    return self:invokeOperation(input, {
        name = "GetGrant",
        input_schema = schemas.GetGrantInput,
        output_schema = schemas.GetGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLicense(input, options)
    return self:invokeOperation(input, {
        name = "GetLicense",
        input_schema = schemas.GetLicenseInput,
        output_schema = schemas.GetLicenseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLicenseAssetGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseAssetGroup",
        input_schema = schemas.GetLicenseAssetGroupInput,
        output_schema = schemas.GetLicenseAssetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLicenseAssetRuleset(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseAssetRuleset",
        input_schema = schemas.GetLicenseAssetRulesetInput,
        output_schema = schemas.GetLicenseAssetRulesetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseConfiguration",
        input_schema = schemas.GetLicenseConfigurationInput,
        output_schema = schemas.GetLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLicenseConversionTask(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseConversionTask",
        input_schema = schemas.GetLicenseConversionTaskInput,
        output_schema = schemas.GetLicenseConversionTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLicenseManagerReportGenerator(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseManagerReportGenerator",
        input_schema = schemas.GetLicenseManagerReportGeneratorInput,
        output_schema = schemas.GetLicenseManagerReportGeneratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLicenseUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseUsage",
        input_schema = schemas.GetLicenseUsageInput,
        output_schema = schemas.GetLicenseUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceSettings",
        input_schema = schemas.GetServiceSettingsInput,
        output_schema = schemas.GetServiceSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssetsForLicenseAssetGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetsForLicenseAssetGroup",
        input_schema = schemas.ListAssetsForLicenseAssetGroupInput,
        output_schema = schemas.ListAssetsForLicenseAssetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociationsForLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociationsForLicenseConfiguration",
        input_schema = schemas.ListAssociationsForLicenseConfigurationInput,
        output_schema = schemas.ListAssociationsForLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributedGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributedGrants",
        input_schema = schemas.ListDistributedGrantsInput,
        output_schema = schemas.ListDistributedGrantsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFailuresForLicenseConfigurationOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListFailuresForLicenseConfigurationOperations",
        input_schema = schemas.ListFailuresForLicenseConfigurationOperationsInput,
        output_schema = schemas.ListFailuresForLicenseConfigurationOperationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLicenseAssetGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseAssetGroups",
        input_schema = schemas.ListLicenseAssetGroupsInput,
        output_schema = schemas.ListLicenseAssetGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLicenseAssetRulesets(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseAssetRulesets",
        input_schema = schemas.ListLicenseAssetRulesetsInput,
        output_schema = schemas.ListLicenseAssetRulesetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLicenseConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseConfigurations",
        input_schema = schemas.ListLicenseConfigurationsInput,
        output_schema = schemas.ListLicenseConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLicenseConfigurationsForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseConfigurationsForOrganization",
        input_schema = schemas.ListLicenseConfigurationsForOrganizationInput,
        output_schema = schemas.ListLicenseConfigurationsForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLicenseConversionTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseConversionTasks",
        input_schema = schemas.ListLicenseConversionTasksInput,
        output_schema = schemas.ListLicenseConversionTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLicenseManagerReportGenerators(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseManagerReportGenerators",
        input_schema = schemas.ListLicenseManagerReportGeneratorsInput,
        output_schema = schemas.ListLicenseManagerReportGeneratorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLicenses(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenses",
        input_schema = schemas.ListLicensesInput,
        output_schema = schemas.ListLicensesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLicenseSpecificationsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseSpecificationsForResource",
        input_schema = schemas.ListLicenseSpecificationsForResourceInput,
        output_schema = schemas.ListLicenseSpecificationsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLicenseVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseVersions",
        input_schema = schemas.ListLicenseVersionsInput,
        output_schema = schemas.ListLicenseVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReceivedGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListReceivedGrants",
        input_schema = schemas.ListReceivedGrantsInput,
        output_schema = schemas.ListReceivedGrantsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReceivedGrantsForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListReceivedGrantsForOrganization",
        input_schema = schemas.ListReceivedGrantsForOrganizationInput,
        output_schema = schemas.ListReceivedGrantsForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReceivedLicenses(input, options)
    return self:invokeOperation(input, {
        name = "ListReceivedLicenses",
        input_schema = schemas.ListReceivedLicensesInput,
        output_schema = schemas.ListReceivedLicensesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReceivedLicensesForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListReceivedLicensesForOrganization",
        input_schema = schemas.ListReceivedLicensesForOrganizationInput,
        output_schema = schemas.ListReceivedLicensesForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceInventory(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceInventory",
        input_schema = schemas.ListResourceInventoryInput,
        output_schema = schemas.ListResourceInventoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTokens(input, options)
    return self:invokeOperation(input, {
        name = "ListTokens",
        input_schema = schemas.ListTokensInput,
        output_schema = schemas.ListTokensOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsageForLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ListUsageForLicenseConfiguration",
        input_schema = schemas.ListUsageForLicenseConfigurationInput,
        output_schema = schemas.ListUsageForLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectGrant(input, options)
    return self:invokeOperation(input, {
        name = "RejectGrant",
        input_schema = schemas.RejectGrantInput,
        output_schema = schemas.RejectGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLicenseAssetGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLicenseAssetGroup",
        input_schema = schemas.UpdateLicenseAssetGroupInput,
        output_schema = schemas.UpdateLicenseAssetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLicenseAssetRuleset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLicenseAssetRuleset",
        input_schema = schemas.UpdateLicenseAssetRulesetInput,
        output_schema = schemas.UpdateLicenseAssetRulesetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLicenseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLicenseConfiguration",
        input_schema = schemas.UpdateLicenseConfigurationInput,
        output_schema = schemas.UpdateLicenseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLicenseManagerReportGenerator(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLicenseManagerReportGenerator",
        input_schema = schemas.UpdateLicenseManagerReportGeneratorInput,
        output_schema = schemas.UpdateLicenseManagerReportGeneratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLicenseSpecificationsForResource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLicenseSpecificationsForResource",
        input_schema = schemas.UpdateLicenseSpecificationsForResourceInput,
        output_schema = schemas.UpdateLicenseSpecificationsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSettings",
        input_schema = schemas.UpdateServiceSettingsInput,
        output_schema = schemas.UpdateServiceSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
