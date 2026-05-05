local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lakeformation.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("lakeformation.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSLakeFormation"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lakeformation", signing_region = cfg.region } }
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

function Client:addLFTagsToResource(input, options)
    return self:invokeOperation(input, {
        name = "AddLFTagsToResource",
        input_schema = schemas.AddLFTagsToResourceInput,
        output_schema = schemas.AddLFTagsToResourceOutput,
        http_method = "POST",
        http_path = "/AddLFTagsToResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:assumeDecoratedRoleWithSAML(input, options)
    return self:invokeOperation(input, {
        name = "AssumeDecoratedRoleWithSAML",
        input_schema = schemas.AssumeDecoratedRoleWithSAMLInput,
        output_schema = schemas.AssumeDecoratedRoleWithSAMLOutput,
        http_method = "POST",
        http_path = "/AssumeDecoratedRoleWithSAML",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGrantPermissions(input, options)
    return self:invokeOperation(input, {
        name = "BatchGrantPermissions",
        input_schema = schemas.BatchGrantPermissionsInput,
        output_schema = schemas.BatchGrantPermissionsOutput,
        http_method = "POST",
        http_path = "/BatchGrantPermissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchRevokePermissions(input, options)
    return self:invokeOperation(input, {
        name = "BatchRevokePermissions",
        input_schema = schemas.BatchRevokePermissionsInput,
        output_schema = schemas.BatchRevokePermissionsOutput,
        http_method = "POST",
        http_path = "/BatchRevokePermissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelTransaction(input, options)
    return self:invokeOperation(input, {
        name = "CancelTransaction",
        input_schema = schemas.CancelTransactionInput,
        output_schema = schemas.CancelTransactionOutput,
        http_method = "POST",
        http_path = "/CancelTransaction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:commitTransaction(input, options)
    return self:invokeOperation(input, {
        name = "CommitTransaction",
        input_schema = schemas.CommitTransactionInput,
        output_schema = schemas.CommitTransactionOutput,
        http_method = "POST",
        http_path = "/CommitTransaction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataCellsFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataCellsFilter",
        input_schema = schemas.CreateDataCellsFilterInput,
        output_schema = schemas.CreateDataCellsFilterOutput,
        http_method = "POST",
        http_path = "/CreateDataCellsFilter",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLakeFormationIdentityCenterConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateLakeFormationIdentityCenterConfiguration",
        input_schema = schemas.CreateLakeFormationIdentityCenterConfigurationInput,
        output_schema = schemas.CreateLakeFormationIdentityCenterConfigurationOutput,
        http_method = "POST",
        http_path = "/CreateLakeFormationIdentityCenterConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLakeFormationOptIn(input, options)
    return self:invokeOperation(input, {
        name = "CreateLakeFormationOptIn",
        input_schema = schemas.CreateLakeFormationOptInInput,
        output_schema = schemas.CreateLakeFormationOptInOutput,
        http_method = "POST",
        http_path = "/CreateLakeFormationOptIn",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLFTag(input, options)
    return self:invokeOperation(input, {
        name = "CreateLFTag",
        input_schema = schemas.CreateLFTagInput,
        output_schema = schemas.CreateLFTagOutput,
        http_method = "POST",
        http_path = "/CreateLFTag",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLFTagExpression(input, options)
    return self:invokeOperation(input, {
        name = "CreateLFTagExpression",
        input_schema = schemas.CreateLFTagExpressionInput,
        output_schema = schemas.CreateLFTagExpressionOutput,
        http_method = "POST",
        http_path = "/CreateLFTagExpression",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataCellsFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataCellsFilter",
        input_schema = schemas.DeleteDataCellsFilterInput,
        output_schema = schemas.DeleteDataCellsFilterOutput,
        http_method = "POST",
        http_path = "/DeleteDataCellsFilter",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLakeFormationIdentityCenterConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLakeFormationIdentityCenterConfiguration",
        input_schema = schemas.DeleteLakeFormationIdentityCenterConfigurationInput,
        output_schema = schemas.DeleteLakeFormationIdentityCenterConfigurationOutput,
        http_method = "POST",
        http_path = "/DeleteLakeFormationIdentityCenterConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLakeFormationOptIn(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLakeFormationOptIn",
        input_schema = schemas.DeleteLakeFormationOptInInput,
        output_schema = schemas.DeleteLakeFormationOptInOutput,
        http_method = "POST",
        http_path = "/DeleteLakeFormationOptIn",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLFTag(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLFTag",
        input_schema = schemas.DeleteLFTagInput,
        output_schema = schemas.DeleteLFTagOutput,
        http_method = "POST",
        http_path = "/DeleteLFTag",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLFTagExpression(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLFTagExpression",
        input_schema = schemas.DeleteLFTagExpressionInput,
        output_schema = schemas.DeleteLFTagExpressionOutput,
        http_method = "POST",
        http_path = "/DeleteLFTagExpression",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteObjectsOnCancel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteObjectsOnCancel",
        input_schema = schemas.DeleteObjectsOnCancelInput,
        output_schema = schemas.DeleteObjectsOnCancelOutput,
        http_method = "POST",
        http_path = "/DeleteObjectsOnCancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterResource(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterResource",
        input_schema = schemas.DeregisterResourceInput,
        output_schema = schemas.DeregisterResourceOutput,
        http_method = "POST",
        http_path = "/DeregisterResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLakeFormationIdentityCenterConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLakeFormationIdentityCenterConfiguration",
        input_schema = schemas.DescribeLakeFormationIdentityCenterConfigurationInput,
        output_schema = schemas.DescribeLakeFormationIdentityCenterConfigurationOutput,
        http_method = "POST",
        http_path = "/DescribeLakeFormationIdentityCenterConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResource",
        input_schema = schemas.DescribeResourceInput,
        output_schema = schemas.DescribeResourceOutput,
        http_method = "POST",
        http_path = "/DescribeResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransaction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransaction",
        input_schema = schemas.DescribeTransactionInput,
        output_schema = schemas.DescribeTransactionOutput,
        http_method = "POST",
        http_path = "/DescribeTransaction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:extendTransaction(input, options)
    return self:invokeOperation(input, {
        name = "ExtendTransaction",
        input_schema = schemas.ExtendTransactionInput,
        output_schema = schemas.ExtendTransactionOutput,
        http_method = "POST",
        http_path = "/ExtendTransaction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataCellsFilter(input, options)
    return self:invokeOperation(input, {
        name = "GetDataCellsFilter",
        input_schema = schemas.GetDataCellsFilterInput,
        output_schema = schemas.GetDataCellsFilterOutput,
        http_method = "POST",
        http_path = "/GetDataCellsFilter",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataLakePrincipal(input, options)
    return self:invokeOperation(input, {
        name = "GetDataLakePrincipal",
        input_schema = schemas.GetDataLakePrincipalInput,
        output_schema = schemas.GetDataLakePrincipalOutput,
        http_method = "POST",
        http_path = "/GetDataLakePrincipal",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataLakeSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetDataLakeSettings",
        input_schema = schemas.GetDataLakeSettingsInput,
        output_schema = schemas.GetDataLakeSettingsOutput,
        http_method = "POST",
        http_path = "/GetDataLakeSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEffectivePermissionsForPath(input, options)
    return self:invokeOperation(input, {
        name = "GetEffectivePermissionsForPath",
        input_schema = schemas.GetEffectivePermissionsForPathInput,
        output_schema = schemas.GetEffectivePermissionsForPathOutput,
        http_method = "POST",
        http_path = "/GetEffectivePermissionsForPath",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLFTag(input, options)
    return self:invokeOperation(input, {
        name = "GetLFTag",
        input_schema = schemas.GetLFTagInput,
        output_schema = schemas.GetLFTagOutput,
        http_method = "POST",
        http_path = "/GetLFTag",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLFTagExpression(input, options)
    return self:invokeOperation(input, {
        name = "GetLFTagExpression",
        input_schema = schemas.GetLFTagExpressionInput,
        output_schema = schemas.GetLFTagExpressionOutput,
        http_method = "POST",
        http_path = "/GetLFTagExpression",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueryState(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryState",
        input_schema = schemas.GetQueryStateInput,
        output_schema = schemas.GetQueryStateOutput,
        http_method = "POST",
        http_path = "/GetQueryState",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueryStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryStatistics",
        input_schema = schemas.GetQueryStatisticsInput,
        output_schema = schemas.GetQueryStatisticsOutput,
        http_method = "POST",
        http_path = "/GetQueryStatistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceLFTags(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceLFTags",
        input_schema = schemas.GetResourceLFTagsInput,
        output_schema = schemas.GetResourceLFTagsOutput,
        http_method = "POST",
        http_path = "/GetResourceLFTags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableObjects(input, options)
    return self:invokeOperation(input, {
        name = "GetTableObjects",
        input_schema = schemas.GetTableObjectsInput,
        output_schema = schemas.GetTableObjectsOutput,
        http_method = "POST",
        http_path = "/GetTableObjects",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemporaryDataLocationCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetTemporaryDataLocationCredentials",
        input_schema = schemas.GetTemporaryDataLocationCredentialsInput,
        output_schema = schemas.GetTemporaryDataLocationCredentialsOutput,
        http_method = "POST",
        http_path = "/GetTemporaryDataLocationCredentials",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemporaryGluePartitionCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetTemporaryGluePartitionCredentials",
        input_schema = schemas.GetTemporaryGluePartitionCredentialsInput,
        output_schema = schemas.GetTemporaryGluePartitionCredentialsOutput,
        http_method = "POST",
        http_path = "/GetTemporaryGluePartitionCredentials",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemporaryGlueTableCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetTemporaryGlueTableCredentials",
        input_schema = schemas.GetTemporaryGlueTableCredentialsInput,
        output_schema = schemas.GetTemporaryGlueTableCredentialsOutput,
        http_method = "POST",
        http_path = "/GetTemporaryGlueTableCredentials",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkUnitResults(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkUnitResults",
        input_schema = schemas.GetWorkUnitResultsInput,
        output_schema = schemas.GetWorkUnitResultsOutput,
        http_method = "POST",
        http_path = "/GetWorkUnitResults",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkUnits(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkUnits",
        input_schema = schemas.GetWorkUnitsInput,
        output_schema = schemas.GetWorkUnitsOutput,
        http_method = "POST",
        http_path = "/GetWorkUnits",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:grantPermissions(input, options)
    return self:invokeOperation(input, {
        name = "GrantPermissions",
        input_schema = schemas.GrantPermissionsInput,
        output_schema = schemas.GrantPermissionsOutput,
        http_method = "POST",
        http_path = "/GrantPermissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataCellsFilter(input, options)
    return self:invokeOperation(input, {
        name = "ListDataCellsFilter",
        input_schema = schemas.ListDataCellsFilterInput,
        output_schema = schemas.ListDataCellsFilterOutput,
        http_method = "POST",
        http_path = "/ListDataCellsFilter",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLakeFormationOptIns(input, options)
    return self:invokeOperation(input, {
        name = "ListLakeFormationOptIns",
        input_schema = schemas.ListLakeFormationOptInsInput,
        output_schema = schemas.ListLakeFormationOptInsOutput,
        http_method = "POST",
        http_path = "/ListLakeFormationOptIns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLFTagExpressions(input, options)
    return self:invokeOperation(input, {
        name = "ListLFTagExpressions",
        input_schema = schemas.ListLFTagExpressionsInput,
        output_schema = schemas.ListLFTagExpressionsOutput,
        http_method = "POST",
        http_path = "/ListLFTagExpressions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLFTags(input, options)
    return self:invokeOperation(input, {
        name = "ListLFTags",
        input_schema = schemas.ListLFTagsInput,
        output_schema = schemas.ListLFTagsOutput,
        http_method = "POST",
        http_path = "/ListLFTags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissions",
        input_schema = schemas.ListPermissionsInput,
        output_schema = schemas.ListPermissionsOutput,
        http_method = "POST",
        http_path = "/ListPermissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResources",
        input_schema = schemas.ListResourcesInput,
        output_schema = schemas.ListResourcesOutput,
        http_method = "POST",
        http_path = "/ListResources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTableStorageOptimizers(input, options)
    return self:invokeOperation(input, {
        name = "ListTableStorageOptimizers",
        input_schema = schemas.ListTableStorageOptimizersInput,
        output_schema = schemas.ListTableStorageOptimizersOutput,
        http_method = "POST",
        http_path = "/ListTableStorageOptimizers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTransactions(input, options)
    return self:invokeOperation(input, {
        name = "ListTransactions",
        input_schema = schemas.ListTransactionsInput,
        output_schema = schemas.ListTransactionsOutput,
        http_method = "POST",
        http_path = "/ListTransactions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDataLakeSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutDataLakeSettings",
        input_schema = schemas.PutDataLakeSettingsInput,
        output_schema = schemas.PutDataLakeSettingsOutput,
        http_method = "POST",
        http_path = "/PutDataLakeSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerResource(input, options)
    return self:invokeOperation(input, {
        name = "RegisterResource",
        input_schema = schemas.RegisterResourceInput,
        output_schema = schemas.RegisterResourceOutput,
        http_method = "POST",
        http_path = "/RegisterResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeLFTagsFromResource(input, options)
    return self:invokeOperation(input, {
        name = "RemoveLFTagsFromResource",
        input_schema = schemas.RemoveLFTagsFromResourceInput,
        output_schema = schemas.RemoveLFTagsFromResourceOutput,
        http_method = "POST",
        http_path = "/RemoveLFTagsFromResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokePermissions(input, options)
    return self:invokeOperation(input, {
        name = "RevokePermissions",
        input_schema = schemas.RevokePermissionsInput,
        output_schema = schemas.RevokePermissionsOutput,
        http_method = "POST",
        http_path = "/RevokePermissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchDatabasesByLFTags(input, options)
    return self:invokeOperation(input, {
        name = "SearchDatabasesByLFTags",
        input_schema = schemas.SearchDatabasesByLFTagsInput,
        output_schema = schemas.SearchDatabasesByLFTagsOutput,
        http_method = "POST",
        http_path = "/SearchDatabasesByLFTags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchTablesByLFTags(input, options)
    return self:invokeOperation(input, {
        name = "SearchTablesByLFTags",
        input_schema = schemas.SearchTablesByLFTagsInput,
        output_schema = schemas.SearchTablesByLFTagsOutput,
        http_method = "POST",
        http_path = "/SearchTablesByLFTags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startQueryPlanning(input, options)
    return self:invokeOperation(input, {
        name = "StartQueryPlanning",
        input_schema = schemas.StartQueryPlanningInput,
        output_schema = schemas.StartQueryPlanningOutput,
        http_method = "POST",
        http_path = "/StartQueryPlanning",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTransaction(input, options)
    return self:invokeOperation(input, {
        name = "StartTransaction",
        input_schema = schemas.StartTransactionInput,
        output_schema = schemas.StartTransactionOutput,
        http_method = "POST",
        http_path = "/StartTransaction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataCellsFilter(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataCellsFilter",
        input_schema = schemas.UpdateDataCellsFilterInput,
        output_schema = schemas.UpdateDataCellsFilterOutput,
        http_method = "POST",
        http_path = "/UpdateDataCellsFilter",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLakeFormationIdentityCenterConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLakeFormationIdentityCenterConfiguration",
        input_schema = schemas.UpdateLakeFormationIdentityCenterConfigurationInput,
        output_schema = schemas.UpdateLakeFormationIdentityCenterConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateLakeFormationIdentityCenterConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLFTag(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLFTag",
        input_schema = schemas.UpdateLFTagInput,
        output_schema = schemas.UpdateLFTagOutput,
        http_method = "POST",
        http_path = "/UpdateLFTag",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLFTagExpression(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLFTagExpression",
        input_schema = schemas.UpdateLFTagExpressionInput,
        output_schema = schemas.UpdateLFTagExpressionOutput,
        http_method = "POST",
        http_path = "/UpdateLFTagExpression",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResource",
        input_schema = schemas.UpdateResourceInput,
        output_schema = schemas.UpdateResourceOutput,
        http_method = "POST",
        http_path = "/UpdateResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTableObjects(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTableObjects",
        input_schema = schemas.UpdateTableObjectsInput,
        output_schema = schemas.UpdateTableObjectsOutput,
        http_method = "POST",
        http_path = "/UpdateTableObjects",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTableStorageOptimizer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTableStorageOptimizer",
        input_schema = schemas.UpdateTableStorageOptimizerInput,
        output_schema = schemas.UpdateTableStorageOptimizerOutput,
        http_method = "POST",
        http_path = "/UpdateTableStorageOptimizer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
