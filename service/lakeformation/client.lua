local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("lakeformation.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("lakeformation.types")

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
        input_schema = types.AddLFTagsToResourceInput,
        output_schema = types.AddLFTagsToResourceOutput,
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
        input_schema = types.AssumeDecoratedRoleWithSAMLInput,
        output_schema = types.AssumeDecoratedRoleWithSAMLOutput,
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
        input_schema = types.BatchGrantPermissionsInput,
        output_schema = types.BatchGrantPermissionsOutput,
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
        input_schema = types.BatchRevokePermissionsInput,
        output_schema = types.BatchRevokePermissionsOutput,
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
        input_schema = types.CancelTransactionInput,
        output_schema = types.CancelTransactionOutput,
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
        input_schema = types.CommitTransactionInput,
        output_schema = types.CommitTransactionOutput,
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
        input_schema = types.CreateDataCellsFilterInput,
        output_schema = types.CreateDataCellsFilterOutput,
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
        input_schema = types.CreateLakeFormationIdentityCenterConfigurationInput,
        output_schema = types.CreateLakeFormationIdentityCenterConfigurationOutput,
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
        input_schema = types.CreateLakeFormationOptInInput,
        output_schema = types.CreateLakeFormationOptInOutput,
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
        input_schema = types.CreateLFTagInput,
        output_schema = types.CreateLFTagOutput,
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
        input_schema = types.CreateLFTagExpressionInput,
        output_schema = types.CreateLFTagExpressionOutput,
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
        input_schema = types.DeleteDataCellsFilterInput,
        output_schema = types.DeleteDataCellsFilterOutput,
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
        input_schema = types.DeleteLakeFormationIdentityCenterConfigurationInput,
        output_schema = types.DeleteLakeFormationIdentityCenterConfigurationOutput,
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
        input_schema = types.DeleteLakeFormationOptInInput,
        output_schema = types.DeleteLakeFormationOptInOutput,
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
        input_schema = types.DeleteLFTagInput,
        output_schema = types.DeleteLFTagOutput,
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
        input_schema = types.DeleteLFTagExpressionInput,
        output_schema = types.DeleteLFTagExpressionOutput,
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
        input_schema = types.DeleteObjectsOnCancelInput,
        output_schema = types.DeleteObjectsOnCancelOutput,
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
        input_schema = types.DeregisterResourceInput,
        output_schema = types.DeregisterResourceOutput,
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
        input_schema = types.DescribeLakeFormationIdentityCenterConfigurationInput,
        output_schema = types.DescribeLakeFormationIdentityCenterConfigurationOutput,
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
        input_schema = types.DescribeResourceInput,
        output_schema = types.DescribeResourceOutput,
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
        input_schema = types.DescribeTransactionInput,
        output_schema = types.DescribeTransactionOutput,
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
        input_schema = types.ExtendTransactionInput,
        output_schema = types.ExtendTransactionOutput,
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
        input_schema = types.GetDataCellsFilterInput,
        output_schema = types.GetDataCellsFilterOutput,
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
        input_schema = types.GetDataLakePrincipalInput,
        output_schema = types.GetDataLakePrincipalOutput,
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
        input_schema = types.GetDataLakeSettingsInput,
        output_schema = types.GetDataLakeSettingsOutput,
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
        input_schema = types.GetEffectivePermissionsForPathInput,
        output_schema = types.GetEffectivePermissionsForPathOutput,
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
        input_schema = types.GetLFTagInput,
        output_schema = types.GetLFTagOutput,
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
        input_schema = types.GetLFTagExpressionInput,
        output_schema = types.GetLFTagExpressionOutput,
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
        input_schema = types.GetQueryStateInput,
        output_schema = types.GetQueryStateOutput,
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
        input_schema = types.GetQueryStatisticsInput,
        output_schema = types.GetQueryStatisticsOutput,
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
        input_schema = types.GetResourceLFTagsInput,
        output_schema = types.GetResourceLFTagsOutput,
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
        input_schema = types.GetTableObjectsInput,
        output_schema = types.GetTableObjectsOutput,
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
        input_schema = types.GetTemporaryDataLocationCredentialsInput,
        output_schema = types.GetTemporaryDataLocationCredentialsOutput,
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
        input_schema = types.GetTemporaryGluePartitionCredentialsInput,
        output_schema = types.GetTemporaryGluePartitionCredentialsOutput,
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
        input_schema = types.GetTemporaryGlueTableCredentialsInput,
        output_schema = types.GetTemporaryGlueTableCredentialsOutput,
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
        input_schema = types.GetWorkUnitResultsInput,
        output_schema = types.GetWorkUnitResultsOutput,
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
        input_schema = types.GetWorkUnitsInput,
        output_schema = types.GetWorkUnitsOutput,
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
        input_schema = types.GrantPermissionsInput,
        output_schema = types.GrantPermissionsOutput,
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
        input_schema = types.ListDataCellsFilterInput,
        output_schema = types.ListDataCellsFilterOutput,
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
        input_schema = types.ListLakeFormationOptInsInput,
        output_schema = types.ListLakeFormationOptInsOutput,
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
        input_schema = types.ListLFTagExpressionsInput,
        output_schema = types.ListLFTagExpressionsOutput,
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
        input_schema = types.ListLFTagsInput,
        output_schema = types.ListLFTagsOutput,
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
        input_schema = types.ListPermissionsInput,
        output_schema = types.ListPermissionsOutput,
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
        input_schema = types.ListResourcesInput,
        output_schema = types.ListResourcesOutput,
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
        input_schema = types.ListTableStorageOptimizersInput,
        output_schema = types.ListTableStorageOptimizersOutput,
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
        input_schema = types.ListTransactionsInput,
        output_schema = types.ListTransactionsOutput,
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
        input_schema = types.PutDataLakeSettingsInput,
        output_schema = types.PutDataLakeSettingsOutput,
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
        input_schema = types.RegisterResourceInput,
        output_schema = types.RegisterResourceOutput,
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
        input_schema = types.RemoveLFTagsFromResourceInput,
        output_schema = types.RemoveLFTagsFromResourceOutput,
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
        input_schema = types.RevokePermissionsInput,
        output_schema = types.RevokePermissionsOutput,
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
        input_schema = types.SearchDatabasesByLFTagsInput,
        output_schema = types.SearchDatabasesByLFTagsOutput,
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
        input_schema = types.SearchTablesByLFTagsInput,
        output_schema = types.SearchTablesByLFTagsOutput,
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
        input_schema = types.StartQueryPlanningInput,
        output_schema = types.StartQueryPlanningOutput,
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
        input_schema = types.StartTransactionInput,
        output_schema = types.StartTransactionOutput,
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
        input_schema = types.UpdateDataCellsFilterInput,
        output_schema = types.UpdateDataCellsFilterOutput,
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
        input_schema = types.UpdateLakeFormationIdentityCenterConfigurationInput,
        output_schema = types.UpdateLakeFormationIdentityCenterConfigurationOutput,
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
        input_schema = types.UpdateLFTagInput,
        output_schema = types.UpdateLFTagOutput,
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
        input_schema = types.UpdateLFTagExpressionInput,
        output_schema = types.UpdateLFTagExpressionOutput,
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
        input_schema = types.UpdateResourceInput,
        output_schema = types.UpdateResourceOutput,
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
        input_schema = types.UpdateTableObjectsInput,
        output_schema = types.UpdateTableObjectsOutput,
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
        input_schema = types.UpdateTableStorageOptimizerInput,
        output_schema = types.UpdateTableStorageOptimizerOutput,
        http_method = "POST",
        http_path = "/UpdateTableStorageOptimizer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
