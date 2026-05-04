local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mgn.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("mgn.types")

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
        input_schema = types.ArchiveApplicationInput,
        output_schema = types.ArchiveApplicationOutput,
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
        input_schema = types.ArchiveWaveInput,
        output_schema = types.ArchiveWaveOutput,
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
        input_schema = types.AssociateApplicationsInput,
        output_schema = types.AssociateApplicationsOutput,
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
        input_schema = types.AssociateSourceServersInput,
        output_schema = types.AssociateSourceServersOutput,
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
        input_schema = types.ChangeServerLifeCycleStateInput,
        output_schema = types.ChangeServerLifeCycleStateOutput,
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
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
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
        input_schema = types.CreateConnectorInput,
        output_schema = types.CreateConnectorOutput,
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
        input_schema = types.CreateLaunchConfigurationTemplateInput,
        output_schema = types.CreateLaunchConfigurationTemplateOutput,
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
        input_schema = types.CreateNetworkMigrationDefinitionInput,
        output_schema = types.CreateNetworkMigrationDefinitionOutput,
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
        input_schema = types.CreateReplicationConfigurationTemplateInput,
        output_schema = types.CreateReplicationConfigurationTemplateOutput,
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
        input_schema = types.CreateWaveInput,
        output_schema = types.CreateWaveOutput,
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
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
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
        input_schema = types.DeleteConnectorInput,
        output_schema = types.DeleteConnectorOutput,
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
        input_schema = types.DeleteJobInput,
        output_schema = types.DeleteJobOutput,
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
        input_schema = types.DeleteLaunchConfigurationTemplateInput,
        output_schema = types.DeleteLaunchConfigurationTemplateOutput,
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
        input_schema = types.DeleteNetworkMigrationDefinitionInput,
        output_schema = types.DeleteNetworkMigrationDefinitionOutput,
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
        input_schema = types.DeleteReplicationConfigurationTemplateInput,
        output_schema = types.DeleteReplicationConfigurationTemplateOutput,
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
        input_schema = types.DeleteSourceServerInput,
        output_schema = types.DeleteSourceServerOutput,
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
        input_schema = types.DeleteVcenterClientInput,
        output_schema = types.DeleteVcenterClientOutput,
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
        input_schema = types.DeleteWaveInput,
        output_schema = types.DeleteWaveOutput,
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
        input_schema = types.DescribeJobLogItemsInput,
        output_schema = types.DescribeJobLogItemsOutput,
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
        input_schema = types.DescribeJobsInput,
        output_schema = types.DescribeJobsOutput,
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
        input_schema = types.DescribeLaunchConfigurationTemplatesInput,
        output_schema = types.DescribeLaunchConfigurationTemplatesOutput,
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
        input_schema = types.DescribeReplicationConfigurationTemplatesInput,
        output_schema = types.DescribeReplicationConfigurationTemplatesOutput,
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
        input_schema = types.DescribeSourceServersInput,
        output_schema = types.DescribeSourceServersOutput,
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
        input_schema = types.DescribeVcenterClientsInput,
        output_schema = types.DescribeVcenterClientsOutput,
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
        input_schema = types.DisassociateApplicationsInput,
        output_schema = types.DisassociateApplicationsOutput,
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
        input_schema = types.DisassociateSourceServersInput,
        output_schema = types.DisassociateSourceServersOutput,
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
        input_schema = types.DisconnectFromServiceInput,
        output_schema = types.DisconnectFromServiceOutput,
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
        input_schema = types.FinalizeCutoverInput,
        output_schema = types.FinalizeCutoverOutput,
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
        input_schema = types.GetLaunchConfigurationInput,
        output_schema = types.GetLaunchConfigurationOutput,
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
        input_schema = types.GetNetworkMigrationDefinitionInput,
        output_schema = types.GetNetworkMigrationDefinitionOutput,
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
        input_schema = types.GetNetworkMigrationMapperSegmentConstructInput,
        output_schema = types.GetNetworkMigrationMapperSegmentConstructOutput,
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
        input_schema = types.GetReplicationConfigurationInput,
        output_schema = types.GetReplicationConfigurationOutput,
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
        input_schema = types.InitializeServiceInput,
        output_schema = types.InitializeServiceOutput,
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
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
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
        input_schema = types.ListConnectorsInput,
        output_schema = types.ListConnectorsOutput,
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
        input_schema = types.ListExportErrorsInput,
        output_schema = types.ListExportErrorsOutput,
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
        input_schema = types.ListExportsInput,
        output_schema = types.ListExportsOutput,
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
        input_schema = types.ListImportErrorsInput,
        output_schema = types.ListImportErrorsOutput,
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
        input_schema = types.ListImportFileEnrichmentsInput,
        output_schema = types.ListImportFileEnrichmentsOutput,
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
        input_schema = types.ListImportsInput,
        output_schema = types.ListImportsOutput,
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
        input_schema = types.ListManagedAccountsInput,
        output_schema = types.ListManagedAccountsOutput,
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
        input_schema = types.ListNetworkMigrationAnalysesInput,
        output_schema = types.ListNetworkMigrationAnalysesOutput,
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
        input_schema = types.ListNetworkMigrationAnalysisResultsInput,
        output_schema = types.ListNetworkMigrationAnalysisResultsOutput,
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
        input_schema = types.ListNetworkMigrationCodeGenerationsInput,
        output_schema = types.ListNetworkMigrationCodeGenerationsOutput,
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
        input_schema = types.ListNetworkMigrationCodeGenerationSegmentsInput,
        output_schema = types.ListNetworkMigrationCodeGenerationSegmentsOutput,
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
        input_schema = types.ListNetworkMigrationDefinitionsInput,
        output_schema = types.ListNetworkMigrationDefinitionsOutput,
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
        input_schema = types.ListNetworkMigrationDeployedStacksInput,
        output_schema = types.ListNetworkMigrationDeployedStacksOutput,
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
        input_schema = types.ListNetworkMigrationDeploymentsInput,
        output_schema = types.ListNetworkMigrationDeploymentsOutput,
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
        input_schema = types.ListNetworkMigrationExecutionsInput,
        output_schema = types.ListNetworkMigrationExecutionsOutput,
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
        input_schema = types.ListNetworkMigrationMapperSegmentConstructsInput,
        output_schema = types.ListNetworkMigrationMapperSegmentConstructsOutput,
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
        input_schema = types.ListNetworkMigrationMapperSegmentsInput,
        output_schema = types.ListNetworkMigrationMapperSegmentsOutput,
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
        input_schema = types.ListNetworkMigrationMappingsInput,
        output_schema = types.ListNetworkMigrationMappingsOutput,
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
        input_schema = types.ListNetworkMigrationMappingUpdatesInput,
        output_schema = types.ListNetworkMigrationMappingUpdatesOutput,
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
        input_schema = types.ListSourceServerActionsInput,
        output_schema = types.ListSourceServerActionsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.ListTemplateActionsInput,
        output_schema = types.ListTemplateActionsOutput,
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
        input_schema = types.ListWavesInput,
        output_schema = types.ListWavesOutput,
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
        input_schema = types.MarkAsArchivedInput,
        output_schema = types.MarkAsArchivedOutput,
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
        input_schema = types.PauseReplicationInput,
        output_schema = types.PauseReplicationOutput,
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
        input_schema = types.PutSourceServerActionInput,
        output_schema = types.PutSourceServerActionOutput,
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
        input_schema = types.PutTemplateActionInput,
        output_schema = types.PutTemplateActionOutput,
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
        input_schema = types.RemoveSourceServerActionInput,
        output_schema = types.RemoveSourceServerActionOutput,
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
        input_schema = types.RemoveTemplateActionInput,
        output_schema = types.RemoveTemplateActionOutput,
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
        input_schema = types.ResumeReplicationInput,
        output_schema = types.ResumeReplicationOutput,
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
        input_schema = types.RetryDataReplicationInput,
        output_schema = types.RetryDataReplicationOutput,
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
        input_schema = types.StartCutoverInput,
        output_schema = types.StartCutoverOutput,
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
        input_schema = types.StartExportInput,
        output_schema = types.StartExportOutput,
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
        input_schema = types.StartImportInput,
        output_schema = types.StartImportOutput,
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
        input_schema = types.StartImportFileEnrichmentInput,
        output_schema = types.StartImportFileEnrichmentOutput,
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
        input_schema = types.StartNetworkMigrationAnalysisInput,
        output_schema = types.StartNetworkMigrationAnalysisOutput,
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
        input_schema = types.StartNetworkMigrationCodeGenerationInput,
        output_schema = types.StartNetworkMigrationCodeGenerationOutput,
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
        input_schema = types.StartNetworkMigrationDeploymentInput,
        output_schema = types.StartNetworkMigrationDeploymentOutput,
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
        input_schema = types.StartNetworkMigrationMappingInput,
        output_schema = types.StartNetworkMigrationMappingOutput,
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
        input_schema = types.StartNetworkMigrationMappingUpdateInput,
        output_schema = types.StartNetworkMigrationMappingUpdateOutput,
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
        input_schema = types.StartReplicationInput,
        output_schema = types.StartReplicationOutput,
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
        input_schema = types.StartTestInput,
        output_schema = types.StartTestOutput,
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
        input_schema = types.StopReplicationInput,
        output_schema = types.StopReplicationOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.TerminateTargetInstancesInput,
        output_schema = types.TerminateTargetInstancesOutput,
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
        input_schema = types.UnarchiveApplicationInput,
        output_schema = types.UnarchiveApplicationOutput,
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
        input_schema = types.UnarchiveWaveInput,
        output_schema = types.UnarchiveWaveOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
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
        input_schema = types.UpdateConnectorInput,
        output_schema = types.UpdateConnectorOutput,
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
        input_schema = types.UpdateLaunchConfigurationInput,
        output_schema = types.UpdateLaunchConfigurationOutput,
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
        input_schema = types.UpdateLaunchConfigurationTemplateInput,
        output_schema = types.UpdateLaunchConfigurationTemplateOutput,
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
        input_schema = types.UpdateNetworkMigrationDefinitionInput,
        output_schema = types.UpdateNetworkMigrationDefinitionOutput,
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
        input_schema = types.UpdateNetworkMigrationMapperSegmentInput,
        output_schema = types.UpdateNetworkMigrationMapperSegmentOutput,
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
        input_schema = types.UpdateReplicationConfigurationInput,
        output_schema = types.UpdateReplicationConfigurationOutput,
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
        input_schema = types.UpdateReplicationConfigurationTemplateInput,
        output_schema = types.UpdateReplicationConfigurationTemplateOutput,
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
        input_schema = types.UpdateSourceServerInput,
        output_schema = types.UpdateSourceServerOutput,
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
        input_schema = types.UpdateSourceServerReplicationTypeInput,
        output_schema = types.UpdateSourceServerReplicationTypeOutput,
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
        input_schema = types.UpdateWaveInput,
        output_schema = types.UpdateWaveOutput,
        http_method = "POST",
        http_path = "/UpdateWave",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
