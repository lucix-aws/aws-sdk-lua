



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mgn.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("mgn.schemas")
local traits = require("smithy.traits")
local types = require("mgn.types")
local sdk_defaults = require("aws.sdk_defaults")





































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ApplicationMigrationService"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mgn", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:archiveApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.ArchiveApplication, input, options)
end

function C:archiveWave(input, options)
   return self:invokeOperation(schemas.Service, schemas.ArchiveWave, input, options)
end

function C:associateApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateApplications, input, options)
end

function C:associateSourceServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSourceServers, input, options)
end

function C:changeServerLifeCycleState(input, options)
   return self:invokeOperation(schemas.Service, schemas.ChangeServerLifeCycleState, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnector, input, options)
end

function C:createLaunchConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLaunchConfigurationTemplate, input, options)
end

function C:createNetworkMigrationDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetworkMigrationDefinition, input, options)
end

function C:createReplicationConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReplicationConfigurationTemplate, input, options)
end

function C:createWave(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWave, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnector, input, options)
end

function C:deleteJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJob, input, options)
end

function C:deleteLaunchConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLaunchConfigurationTemplate, input, options)
end

function C:deleteNetworkMigrationDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkMigrationDefinition, input, options)
end

function C:deleteReplicationConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReplicationConfigurationTemplate, input, options)
end

function C:deleteSourceServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSourceServer, input, options)
end

function C:deleteVcenterClient(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVcenterClient, input, options)
end

function C:deleteWave(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWave, input, options)
end

function C:describeJobLogItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobLogItems, input, options)
end

function C:describeJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobs, input, options)
end

function C:describeLaunchConfigurationTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLaunchConfigurationTemplates, input, options)
end

function C:describeReplicationConfigurationTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationConfigurationTemplates, input, options)
end

function C:describeSourceServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSourceServers, input, options)
end

function C:describeVcenterClients(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVcenterClients, input, options)
end

function C:disassociateApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateApplications, input, options)
end

function C:disassociateSourceServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSourceServers, input, options)
end

function C:disconnectFromService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisconnectFromService, input, options)
end

function C:finalizeCutover(input, options)
   return self:invokeOperation(schemas.Service, schemas.FinalizeCutover, input, options)
end

function C:getLaunchConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLaunchConfiguration, input, options)
end

function C:getNetworkMigrationDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkMigrationDefinition, input, options)
end

function C:getNetworkMigrationMapperSegmentConstruct(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkMigrationMapperSegmentConstruct, input, options)
end

function C:getReplicationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReplicationConfiguration, input, options)
end

function C:initializeService(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitializeService, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listConnectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectors, input, options)
end

function C:listExportErrors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExportErrors, input, options)
end

function C:listExports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExports, input, options)
end

function C:listImportErrors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImportErrors, input, options)
end

function C:listImportFileEnrichments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImportFileEnrichments, input, options)
end

function C:listImports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImports, input, options)
end

function C:listManagedAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedAccounts, input, options)
end

function C:listNetworkMigrationAnalyses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationAnalyses, input, options)
end

function C:listNetworkMigrationAnalysisResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationAnalysisResults, input, options)
end

function C:listNetworkMigrationCodeGenerations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationCodeGenerations, input, options)
end

function C:listNetworkMigrationCodeGenerationSegments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationCodeGenerationSegments, input, options)
end

function C:listNetworkMigrationDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationDefinitions, input, options)
end

function C:listNetworkMigrationDeployedStacks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationDeployedStacks, input, options)
end

function C:listNetworkMigrationDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationDeployments, input, options)
end

function C:listNetworkMigrationExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationExecutions, input, options)
end

function C:listNetworkMigrationMapperSegmentConstructs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationMapperSegmentConstructs, input, options)
end

function C:listNetworkMigrationMapperSegments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationMapperSegments, input, options)
end

function C:listNetworkMigrationMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationMappings, input, options)
end

function C:listNetworkMigrationMappingUpdates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkMigrationMappingUpdates, input, options)
end

function C:listSourceServerActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSourceServerActions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTemplateActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplateActions, input, options)
end

function C:listWaves(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWaves, input, options)
end

function C:markAsArchived(input, options)
   return self:invokeOperation(schemas.Service, schemas.MarkAsArchived, input, options)
end

function C:pauseReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.PauseReplication, input, options)
end

function C:putSourceServerAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSourceServerAction, input, options)
end

function C:putTemplateAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTemplateAction, input, options)
end

function C:removeSourceServerAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveSourceServerAction, input, options)
end

function C:removeTemplateAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTemplateAction, input, options)
end

function C:resumeReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResumeReplication, input, options)
end

function C:retryDataReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetryDataReplication, input, options)
end

function C:startCutover(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCutover, input, options)
end

function C:startExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartExport, input, options)
end

function C:startImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImport, input, options)
end

function C:startImportFileEnrichment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImportFileEnrichment, input, options)
end

function C:startNetworkMigrationAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartNetworkMigrationAnalysis, input, options)
end

function C:startNetworkMigrationCodeGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartNetworkMigrationCodeGeneration, input, options)
end

function C:startNetworkMigrationDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartNetworkMigrationDeployment, input, options)
end

function C:startNetworkMigrationMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartNetworkMigrationMapping, input, options)
end

function C:startNetworkMigrationMappingUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartNetworkMigrationMappingUpdate, input, options)
end

function C:startReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReplication, input, options)
end

function C:startTest(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTest, input, options)
end

function C:stopReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopReplication, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:terminateTargetInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateTargetInstances, input, options)
end

function C:unarchiveApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnarchiveApplication, input, options)
end

function C:unarchiveWave(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnarchiveWave, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnector, input, options)
end

function C:updateLaunchConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLaunchConfiguration, input, options)
end

function C:updateLaunchConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLaunchConfigurationTemplate, input, options)
end

function C:updateNetworkMigrationDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNetworkMigrationDefinition, input, options)
end

function C:updateNetworkMigrationMapperSegment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNetworkMigrationMapperSegment, input, options)
end

function C:updateReplicationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReplicationConfiguration, input, options)
end

function C:updateReplicationConfigurationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReplicationConfigurationTemplate, input, options)
end

function C:updateSourceServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSourceServer, input, options)
end

function C:updateSourceServerReplicationType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSourceServerReplicationType, input, options)
end

function C:updateWave(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWave, input, options)
end

return M
