local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mgn.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("mgn.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ApplicationMigrationService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mgn", signing_region = cfg.region } }
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

function Client:archiveApplication(input, options)
    return self:invokeOperation(input, {
        name = "ArchiveApplication",
        input_schema = schemas.ArchiveApplicationInput,
        output_schema = schemas.ArchiveApplicationOutput,
        http_method = "POST",
        http_path = "/ArchiveApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:archiveWave(input, options)
    return self:invokeOperation(input, {
        name = "ArchiveWave",
        input_schema = schemas.ArchiveWaveInput,
        output_schema = schemas.ArchiveWaveOutput,
        http_method = "POST",
        http_path = "/ArchiveWave",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateApplications(input, options)
    return self:invokeOperation(input, {
        name = "AssociateApplications",
        input_schema = schemas.AssociateApplicationsInput,
        output_schema = schemas.AssociateApplicationsOutput,
        http_method = "POST",
        http_path = "/AssociateApplications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSourceServers(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSourceServers",
        input_schema = schemas.AssociateSourceServersInput,
        output_schema = schemas.AssociateSourceServersOutput,
        http_method = "POST",
        http_path = "/AssociateSourceServers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:changeServerLifeCycleState(input, options)
    return self:invokeOperation(input, {
        name = "ChangeServerLifeCycleState",
        input_schema = schemas.ChangeServerLifeCycleStateInput,
        output_schema = schemas.ChangeServerLifeCycleStateOutput,
        http_method = "POST",
        http_path = "/ChangeServerLifeCycleState",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = schemas.CreateApplicationInput,
        output_schema = schemas.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/CreateApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnector",
        input_schema = schemas.CreateConnectorInput,
        output_schema = schemas.CreateConnectorOutput,
        http_method = "POST",
        http_path = "/CreateConnector",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLaunchConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateLaunchConfigurationTemplate",
        input_schema = schemas.CreateLaunchConfigurationTemplateInput,
        output_schema = schemas.CreateLaunchConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/CreateLaunchConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetworkMigrationDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkMigrationDefinition",
        input_schema = schemas.CreateNetworkMigrationDefinitionInput,
        output_schema = schemas.CreateNetworkMigrationDefinitionOutput,
        http_method = "POST",
        http_path = "/network-migration/CreateNetworkMigrationDefinition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReplicationConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicationConfigurationTemplate",
        input_schema = schemas.CreateReplicationConfigurationTemplateInput,
        output_schema = schemas.CreateReplicationConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/CreateReplicationConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWave(input, options)
    return self:invokeOperation(input, {
        name = "CreateWave",
        input_schema = schemas.CreateWaveInput,
        output_schema = schemas.CreateWaveOutput,
        http_method = "POST",
        http_path = "/CreateWave",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = schemas.DeleteApplicationInput,
        output_schema = schemas.DeleteApplicationOutput,
        http_method = "POST",
        http_path = "/DeleteApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnector",
        input_schema = schemas.DeleteConnectorInput,
        output_schema = schemas.DeleteConnectorOutput,
        http_method = "POST",
        http_path = "/DeleteConnector",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJob",
        input_schema = schemas.DeleteJobInput,
        output_schema = schemas.DeleteJobOutput,
        http_method = "POST",
        http_path = "/DeleteJob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLaunchConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLaunchConfigurationTemplate",
        input_schema = schemas.DeleteLaunchConfigurationTemplateInput,
        output_schema = schemas.DeleteLaunchConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/DeleteLaunchConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkMigrationDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkMigrationDefinition",
        input_schema = schemas.DeleteNetworkMigrationDefinitionInput,
        output_schema = schemas.DeleteNetworkMigrationDefinitionOutput,
        http_method = "POST",
        http_path = "/network-migration/DeleteNetworkMigrationDefinition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReplicationConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationConfigurationTemplate",
        input_schema = schemas.DeleteReplicationConfigurationTemplateInput,
        output_schema = schemas.DeleteReplicationConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/DeleteReplicationConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSourceServer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSourceServer",
        input_schema = schemas.DeleteSourceServerInput,
        output_schema = schemas.DeleteSourceServerOutput,
        http_method = "POST",
        http_path = "/DeleteSourceServer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVcenterClient(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVcenterClient",
        input_schema = schemas.DeleteVcenterClientInput,
        output_schema = schemas.DeleteVcenterClientOutput,
        http_method = "POST",
        http_path = "/DeleteVcenterClient",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWave(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWave",
        input_schema = schemas.DeleteWaveInput,
        output_schema = schemas.DeleteWaveOutput,
        http_method = "POST",
        http_path = "/DeleteWave",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobLogItems(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobLogItems",
        input_schema = schemas.DescribeJobLogItemsInput,
        output_schema = schemas.DescribeJobLogItemsOutput,
        http_method = "POST",
        http_path = "/DescribeJobLogItems",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobs",
        input_schema = schemas.DescribeJobsInput,
        output_schema = schemas.DescribeJobsOutput,
        http_method = "POST",
        http_path = "/DescribeJobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLaunchConfigurationTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLaunchConfigurationTemplates",
        input_schema = schemas.DescribeLaunchConfigurationTemplatesInput,
        output_schema = schemas.DescribeLaunchConfigurationTemplatesOutput,
        http_method = "POST",
        http_path = "/DescribeLaunchConfigurationTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationConfigurationTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationConfigurationTemplates",
        input_schema = schemas.DescribeReplicationConfigurationTemplatesInput,
        output_schema = schemas.DescribeReplicationConfigurationTemplatesOutput,
        http_method = "POST",
        http_path = "/DescribeReplicationConfigurationTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSourceServers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSourceServers",
        input_schema = schemas.DescribeSourceServersInput,
        output_schema = schemas.DescribeSourceServersOutput,
        http_method = "POST",
        http_path = "/DescribeSourceServers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVcenterClients(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVcenterClients",
        input_schema = schemas.DescribeVcenterClientsInput,
        output_schema = schemas.DescribeVcenterClientsOutput,
        http_method = "GET",
        http_path = "/DescribeVcenterClients",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateApplications(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateApplications",
        input_schema = schemas.DisassociateApplicationsInput,
        output_schema = schemas.DisassociateApplicationsOutput,
        http_method = "POST",
        http_path = "/DisassociateApplications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSourceServers(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSourceServers",
        input_schema = schemas.DisassociateSourceServersInput,
        output_schema = schemas.DisassociateSourceServersOutput,
        http_method = "POST",
        http_path = "/DisassociateSourceServers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disconnectFromService(input, options)
    return self:invokeOperation(input, {
        name = "DisconnectFromService",
        input_schema = schemas.DisconnectFromServiceInput,
        output_schema = schemas.DisconnectFromServiceOutput,
        http_method = "POST",
        http_path = "/DisconnectFromService",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:finalizeCutover(input, options)
    return self:invokeOperation(input, {
        name = "FinalizeCutover",
        input_schema = schemas.FinalizeCutoverInput,
        output_schema = schemas.FinalizeCutoverOutput,
        http_method = "POST",
        http_path = "/FinalizeCutover",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLaunchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetLaunchConfiguration",
        input_schema = schemas.GetLaunchConfigurationInput,
        output_schema = schemas.GetLaunchConfigurationOutput,
        http_method = "POST",
        http_path = "/GetLaunchConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkMigrationDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkMigrationDefinition",
        input_schema = schemas.GetNetworkMigrationDefinitionInput,
        output_schema = schemas.GetNetworkMigrationDefinitionOutput,
        http_method = "POST",
        http_path = "/network-migration/GetNetworkMigrationDefinition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkMigrationMapperSegmentConstruct(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkMigrationMapperSegmentConstruct",
        input_schema = schemas.GetNetworkMigrationMapperSegmentConstructInput,
        output_schema = schemas.GetNetworkMigrationMapperSegmentConstructOutput,
        http_method = "POST",
        http_path = "/network-migration/GetNetworkMigrationMapperSegmentConstruct",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetReplicationConfiguration",
        input_schema = schemas.GetReplicationConfigurationInput,
        output_schema = schemas.GetReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/GetReplicationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:initializeService(input, options)
    return self:invokeOperation(input, {
        name = "InitializeService",
        input_schema = schemas.InitializeServiceInput,
        output_schema = schemas.InitializeServiceOutput,
        http_method = "POST",
        http_path = "/InitializeService",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = schemas.ListApplicationsInput,
        output_schema = schemas.ListApplicationsOutput,
        http_method = "POST",
        http_path = "/ListApplications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectors",
        input_schema = schemas.ListConnectorsInput,
        output_schema = schemas.ListConnectorsOutput,
        http_method = "POST",
        http_path = "/ListConnectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExportErrors(input, options)
    return self:invokeOperation(input, {
        name = "ListExportErrors",
        input_schema = schemas.ListExportErrorsInput,
        output_schema = schemas.ListExportErrorsOutput,
        http_method = "POST",
        http_path = "/ListExportErrors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExports(input, options)
    return self:invokeOperation(input, {
        name = "ListExports",
        input_schema = schemas.ListExportsInput,
        output_schema = schemas.ListExportsOutput,
        http_method = "POST",
        http_path = "/ListExports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImportErrors(input, options)
    return self:invokeOperation(input, {
        name = "ListImportErrors",
        input_schema = schemas.ListImportErrorsInput,
        output_schema = schemas.ListImportErrorsOutput,
        http_method = "POST",
        http_path = "/ListImportErrors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImportFileEnrichments(input, options)
    return self:invokeOperation(input, {
        name = "ListImportFileEnrichments",
        input_schema = schemas.ListImportFileEnrichmentsInput,
        output_schema = schemas.ListImportFileEnrichmentsOutput,
        http_method = "POST",
        http_path = "/network-migration/ListImportFileEnrichments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImports(input, options)
    return self:invokeOperation(input, {
        name = "ListImports",
        input_schema = schemas.ListImportsInput,
        output_schema = schemas.ListImportsOutput,
        http_method = "POST",
        http_path = "/ListImports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedAccounts",
        input_schema = schemas.ListManagedAccountsInput,
        output_schema = schemas.ListManagedAccountsOutput,
        http_method = "POST",
        http_path = "/ListManagedAccounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationAnalyses(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationAnalyses",
        input_schema = schemas.ListNetworkMigrationAnalysesInput,
        output_schema = schemas.ListNetworkMigrationAnalysesOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationAnalyses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationAnalysisResults(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationAnalysisResults",
        input_schema = schemas.ListNetworkMigrationAnalysisResultsInput,
        output_schema = schemas.ListNetworkMigrationAnalysisResultsOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationAnalysisResults",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationCodeGenerations(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationCodeGenerations",
        input_schema = schemas.ListNetworkMigrationCodeGenerationsInput,
        output_schema = schemas.ListNetworkMigrationCodeGenerationsOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationCodeGenerations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationCodeGenerationSegments(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationCodeGenerationSegments",
        input_schema = schemas.ListNetworkMigrationCodeGenerationSegmentsInput,
        output_schema = schemas.ListNetworkMigrationCodeGenerationSegmentsOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationCodeGenerationSegments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationDefinitions",
        input_schema = schemas.ListNetworkMigrationDefinitionsInput,
        output_schema = schemas.ListNetworkMigrationDefinitionsOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationDefinitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationDeployedStacks(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationDeployedStacks",
        input_schema = schemas.ListNetworkMigrationDeployedStacksInput,
        output_schema = schemas.ListNetworkMigrationDeployedStacksOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationDeployedStacks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationDeployments",
        input_schema = schemas.ListNetworkMigrationDeploymentsInput,
        output_schema = schemas.ListNetworkMigrationDeploymentsOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationDeployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationExecutions",
        input_schema = schemas.ListNetworkMigrationExecutionsInput,
        output_schema = schemas.ListNetworkMigrationExecutionsOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationExecutions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationMapperSegmentConstructs(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationMapperSegmentConstructs",
        input_schema = schemas.ListNetworkMigrationMapperSegmentConstructsInput,
        output_schema = schemas.ListNetworkMigrationMapperSegmentConstructsOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationMapperSegmentConstructs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationMapperSegments(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationMapperSegments",
        input_schema = schemas.ListNetworkMigrationMapperSegmentsInput,
        output_schema = schemas.ListNetworkMigrationMapperSegmentsOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationMapperSegments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationMappings(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationMappings",
        input_schema = schemas.ListNetworkMigrationMappingsInput,
        output_schema = schemas.ListNetworkMigrationMappingsOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationMappings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkMigrationMappingUpdates(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkMigrationMappingUpdates",
        input_schema = schemas.ListNetworkMigrationMappingUpdatesInput,
        output_schema = schemas.ListNetworkMigrationMappingUpdatesOutput,
        http_method = "POST",
        http_path = "/network-migration/ListNetworkMigrationMappingUpdates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSourceServerActions(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceServerActions",
        input_schema = schemas.ListSourceServerActionsInput,
        output_schema = schemas.ListSourceServerActionsOutput,
        http_method = "POST",
        http_path = "/ListSourceServerActions",
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
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTemplateActions(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateActions",
        input_schema = schemas.ListTemplateActionsInput,
        output_schema = schemas.ListTemplateActionsOutput,
        http_method = "POST",
        http_path = "/ListTemplateActions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWaves(input, options)
    return self:invokeOperation(input, {
        name = "ListWaves",
        input_schema = schemas.ListWavesInput,
        output_schema = schemas.ListWavesOutput,
        http_method = "POST",
        http_path = "/ListWaves",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:markAsArchived(input, options)
    return self:invokeOperation(input, {
        name = "MarkAsArchived",
        input_schema = schemas.MarkAsArchivedInput,
        output_schema = schemas.MarkAsArchivedOutput,
        http_method = "POST",
        http_path = "/MarkAsArchived",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:pauseReplication(input, options)
    return self:invokeOperation(input, {
        name = "PauseReplication",
        input_schema = schemas.PauseReplicationInput,
        output_schema = schemas.PauseReplicationOutput,
        http_method = "POST",
        http_path = "/PauseReplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSourceServerAction(input, options)
    return self:invokeOperation(input, {
        name = "PutSourceServerAction",
        input_schema = schemas.PutSourceServerActionInput,
        output_schema = schemas.PutSourceServerActionOutput,
        http_method = "POST",
        http_path = "/PutSourceServerAction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTemplateAction(input, options)
    return self:invokeOperation(input, {
        name = "PutTemplateAction",
        input_schema = schemas.PutTemplateActionInput,
        output_schema = schemas.PutTemplateActionOutput,
        http_method = "POST",
        http_path = "/PutTemplateAction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeSourceServerAction(input, options)
    return self:invokeOperation(input, {
        name = "RemoveSourceServerAction",
        input_schema = schemas.RemoveSourceServerActionInput,
        output_schema = schemas.RemoveSourceServerActionOutput,
        http_method = "POST",
        http_path = "/RemoveSourceServerAction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTemplateAction(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTemplateAction",
        input_schema = schemas.RemoveTemplateActionInput,
        output_schema = schemas.RemoveTemplateActionOutput,
        http_method = "POST",
        http_path = "/RemoveTemplateAction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resumeReplication(input, options)
    return self:invokeOperation(input, {
        name = "ResumeReplication",
        input_schema = schemas.ResumeReplicationInput,
        output_schema = schemas.ResumeReplicationOutput,
        http_method = "POST",
        http_path = "/ResumeReplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retryDataReplication(input, options)
    return self:invokeOperation(input, {
        name = "RetryDataReplication",
        input_schema = schemas.RetryDataReplicationInput,
        output_schema = schemas.RetryDataReplicationOutput,
        http_method = "POST",
        http_path = "/RetryDataReplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCutover(input, options)
    return self:invokeOperation(input, {
        name = "StartCutover",
        input_schema = schemas.StartCutoverInput,
        output_schema = schemas.StartCutoverOutput,
        http_method = "POST",
        http_path = "/StartCutover",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startExport(input, options)
    return self:invokeOperation(input, {
        name = "StartExport",
        input_schema = schemas.StartExportInput,
        output_schema = schemas.StartExportOutput,
        http_method = "POST",
        http_path = "/StartExport",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startImport(input, options)
    return self:invokeOperation(input, {
        name = "StartImport",
        input_schema = schemas.StartImportInput,
        output_schema = schemas.StartImportOutput,
        http_method = "POST",
        http_path = "/StartImport",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startImportFileEnrichment(input, options)
    return self:invokeOperation(input, {
        name = "StartImportFileEnrichment",
        input_schema = schemas.StartImportFileEnrichmentInput,
        output_schema = schemas.StartImportFileEnrichmentOutput,
        http_method = "POST",
        http_path = "/network-migration/StartImportFileEnrichment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startNetworkMigrationAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartNetworkMigrationAnalysis",
        input_schema = schemas.StartNetworkMigrationAnalysisInput,
        output_schema = schemas.StartNetworkMigrationAnalysisOutput,
        http_method = "POST",
        http_path = "/network-migration/StartNetworkMigrationAnalysis",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startNetworkMigrationCodeGeneration(input, options)
    return self:invokeOperation(input, {
        name = "StartNetworkMigrationCodeGeneration",
        input_schema = schemas.StartNetworkMigrationCodeGenerationInput,
        output_schema = schemas.StartNetworkMigrationCodeGenerationOutput,
        http_method = "POST",
        http_path = "/network-migration/StartNetworkMigrationCodeGeneration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startNetworkMigrationDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StartNetworkMigrationDeployment",
        input_schema = schemas.StartNetworkMigrationDeploymentInput,
        output_schema = schemas.StartNetworkMigrationDeploymentOutput,
        http_method = "POST",
        http_path = "/network-migration/StartNetworkMigrationDeployment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startNetworkMigrationMapping(input, options)
    return self:invokeOperation(input, {
        name = "StartNetworkMigrationMapping",
        input_schema = schemas.StartNetworkMigrationMappingInput,
        output_schema = schemas.StartNetworkMigrationMappingOutput,
        http_method = "POST",
        http_path = "/network-migration/StartNetworkMigrationMapping",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startNetworkMigrationMappingUpdate(input, options)
    return self:invokeOperation(input, {
        name = "StartNetworkMigrationMappingUpdate",
        input_schema = schemas.StartNetworkMigrationMappingUpdateInput,
        output_schema = schemas.StartNetworkMigrationMappingUpdateOutput,
        http_method = "POST",
        http_path = "/network-migration/StartNetworkMigrationMappingUpdate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startReplication(input, options)
    return self:invokeOperation(input, {
        name = "StartReplication",
        input_schema = schemas.StartReplicationInput,
        output_schema = schemas.StartReplicationOutput,
        http_method = "POST",
        http_path = "/StartReplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTest(input, options)
    return self:invokeOperation(input, {
        name = "StartTest",
        input_schema = schemas.StartTestInput,
        output_schema = schemas.StartTestOutput,
        http_method = "POST",
        http_path = "/StartTest",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopReplication(input, options)
    return self:invokeOperation(input, {
        name = "StopReplication",
        input_schema = schemas.StopReplicationInput,
        output_schema = schemas.StopReplicationOutput,
        http_method = "POST",
        http_path = "/StopReplication",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateTargetInstances(input, options)
    return self:invokeOperation(input, {
        name = "TerminateTargetInstances",
        input_schema = schemas.TerminateTargetInstancesInput,
        output_schema = schemas.TerminateTargetInstancesOutput,
        http_method = "POST",
        http_path = "/TerminateTargetInstances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unarchiveApplication(input, options)
    return self:invokeOperation(input, {
        name = "UnarchiveApplication",
        input_schema = schemas.UnarchiveApplicationInput,
        output_schema = schemas.UnarchiveApplicationOutput,
        http_method = "POST",
        http_path = "/UnarchiveApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unarchiveWave(input, options)
    return self:invokeOperation(input, {
        name = "UnarchiveWave",
        input_schema = schemas.UnarchiveWaveInput,
        output_schema = schemas.UnarchiveWaveOutput,
        http_method = "POST",
        http_path = "/UnarchiveWave",
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
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = schemas.UpdateApplicationInput,
        output_schema = schemas.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/UpdateApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnector",
        input_schema = schemas.UpdateConnectorInput,
        output_schema = schemas.UpdateConnectorOutput,
        http_method = "POST",
        http_path = "/UpdateConnector",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLaunchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLaunchConfiguration",
        input_schema = schemas.UpdateLaunchConfigurationInput,
        output_schema = schemas.UpdateLaunchConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateLaunchConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLaunchConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLaunchConfigurationTemplate",
        input_schema = schemas.UpdateLaunchConfigurationTemplateInput,
        output_schema = schemas.UpdateLaunchConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/UpdateLaunchConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNetworkMigrationDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetworkMigrationDefinition",
        input_schema = schemas.UpdateNetworkMigrationDefinitionInput,
        output_schema = schemas.UpdateNetworkMigrationDefinitionOutput,
        http_method = "POST",
        http_path = "/network-migration/UpdateNetworkMigrationDefinition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNetworkMigrationMapperSegment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetworkMigrationMapperSegment",
        input_schema = schemas.UpdateNetworkMigrationMapperSegmentInput,
        output_schema = schemas.UpdateNetworkMigrationMapperSegmentOutput,
        http_method = "POST",
        http_path = "/network-migration/UpdateNetworkMigrationMapperSegment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReplicationConfiguration",
        input_schema = schemas.UpdateReplicationConfigurationInput,
        output_schema = schemas.UpdateReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateReplicationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReplicationConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReplicationConfigurationTemplate",
        input_schema = schemas.UpdateReplicationConfigurationTemplateInput,
        output_schema = schemas.UpdateReplicationConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/UpdateReplicationConfigurationTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSourceServer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSourceServer",
        input_schema = schemas.UpdateSourceServerInput,
        output_schema = schemas.UpdateSourceServerOutput,
        http_method = "POST",
        http_path = "/UpdateSourceServer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSourceServerReplicationType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSourceServerReplicationType",
        input_schema = schemas.UpdateSourceServerReplicationTypeInput,
        output_schema = schemas.UpdateSourceServerReplicationTypeOutput,
        http_method = "POST",
        http_path = "/UpdateSourceServerReplicationType",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWave(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWave",
        input_schema = schemas.UpdateWaveInput,
        output_schema = schemas.UpdateWaveOutput,
        http_method = "POST",
        http_path = "/UpdateWave",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
