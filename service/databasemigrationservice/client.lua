



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("databasemigrationservice.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("databasemigrationservice.schemas")
local traits = require("smithy.traits")
local types = require("databasemigrationservice.types")
local sdk_defaults = require("aws.sdk_defaults")





























































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonDMSv20160101"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "dms", signing_region = c.region } }
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

function C:addTagsToResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTagsToResource, input, options)
end

function C:applyPendingMaintenanceAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ApplyPendingMaintenanceAction, input, options)
end

function C:batchStartRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchStartRecommendations, input, options)
end

function C:cancelMetadataModelConversion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMetadataModelConversion, input, options)
end

function C:cancelMetadataModelCreation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMetadataModelCreation, input, options)
end

function C:cancelReplicationTaskAssessmentRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelReplicationTaskAssessmentRun, input, options)
end

function C:createDataMigration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataMigration, input, options)
end

function C:createDataProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataProvider, input, options)
end

function C:createEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEndpoint, input, options)
end

function C:createEventSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventSubscription, input, options)
end

function C:createFleetAdvisorCollector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFleetAdvisorCollector, input, options)
end

function C:createInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstanceProfile, input, options)
end

function C:createMigrationProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMigrationProject, input, options)
end

function C:createReplicationConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReplicationConfig, input, options)
end

function C:createReplicationInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReplicationInstance, input, options)
end

function C:createReplicationSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReplicationSubnetGroup, input, options)
end

function C:createReplicationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReplicationTask, input, options)
end

function C:deleteCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCertificate, input, options)
end

function C:deleteConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnection, input, options)
end

function C:deleteDataMigration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataMigration, input, options)
end

function C:deleteDataProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataProvider, input, options)
end

function C:deleteEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEndpoint, input, options)
end

function C:deleteEventSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventSubscription, input, options)
end

function C:deleteFleetAdvisorCollector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFleetAdvisorCollector, input, options)
end

function C:deleteFleetAdvisorDatabases(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFleetAdvisorDatabases, input, options)
end

function C:deleteInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstanceProfile, input, options)
end

function C:deleteMigrationProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMigrationProject, input, options)
end

function C:deleteReplicationConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReplicationConfig, input, options)
end

function C:deleteReplicationInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReplicationInstance, input, options)
end

function C:deleteReplicationSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReplicationSubnetGroup, input, options)
end

function C:deleteReplicationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReplicationTask, input, options)
end

function C:deleteReplicationTaskAssessmentRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReplicationTaskAssessmentRun, input, options)
end

function C:describeAccountAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountAttributes, input, options)
end

function C:describeApplicableIndividualAssessments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplicableIndividualAssessments, input, options)
end

function C:describeCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCertificates, input, options)
end

function C:describeConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnections, input, options)
end

function C:describeConversionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConversionConfiguration, input, options)
end

function C:describeDataMigrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataMigrations, input, options)
end

function C:describeDataProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataProviders, input, options)
end

function C:describeEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpoints, input, options)
end

function C:describeEndpointSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpointSettings, input, options)
end

function C:describeEndpointTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpointTypes, input, options)
end

function C:describeEngineVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEngineVersions, input, options)
end

function C:describeEventCategories(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventCategories, input, options)
end

function C:describeEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEvents, input, options)
end

function C:describeEventSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventSubscriptions, input, options)
end

function C:describeExtensionPackAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExtensionPackAssociations, input, options)
end

function C:describeFleetAdvisorCollectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetAdvisorCollectors, input, options)
end

function C:describeFleetAdvisorDatabases(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetAdvisorDatabases, input, options)
end

function C:describeFleetAdvisorLsaAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetAdvisorLsaAnalysis, input, options)
end

function C:describeFleetAdvisorSchemaObjectSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetAdvisorSchemaObjectSummary, input, options)
end

function C:describeFleetAdvisorSchemas(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetAdvisorSchemas, input, options)
end

function C:describeInstanceProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceProfiles, input, options)
end

function C:describeMetadataModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetadataModel, input, options)
end

function C:describeMetadataModelAssessments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetadataModelAssessments, input, options)
end

function C:describeMetadataModelChildren(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetadataModelChildren, input, options)
end

function C:describeMetadataModelConversions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetadataModelConversions, input, options)
end

function C:describeMetadataModelCreations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetadataModelCreations, input, options)
end

function C:describeMetadataModelExportsAsScript(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetadataModelExportsAsScript, input, options)
end

function C:describeMetadataModelExportsToTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetadataModelExportsToTarget, input, options)
end

function C:describeMetadataModelImports(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetadataModelImports, input, options)
end

function C:describeMigrationProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMigrationProjects, input, options)
end

function C:describeOrderableReplicationInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrderableReplicationInstances, input, options)
end

function C:describePendingMaintenanceActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePendingMaintenanceActions, input, options)
end

function C:describeRecommendationLimitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRecommendationLimitations, input, options)
end

function C:describeRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRecommendations, input, options)
end

function C:describeRefreshSchemasStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRefreshSchemasStatus, input, options)
end

function C:describeReplicationConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationConfigs, input, options)
end

function C:describeReplicationInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationInstances, input, options)
end

function C:describeReplicationInstanceTaskLogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationInstanceTaskLogs, input, options)
end

function C:describeReplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplications, input, options)
end

function C:describeReplicationSubnetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationSubnetGroups, input, options)
end

function C:describeReplicationTableStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationTableStatistics, input, options)
end

function C:describeReplicationTaskAssessmentResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationTaskAssessmentResults, input, options)
end

function C:describeReplicationTaskAssessmentRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationTaskAssessmentRuns, input, options)
end

function C:describeReplicationTaskIndividualAssessments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationTaskIndividualAssessments, input, options)
end

function C:describeReplicationTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationTasks, input, options)
end

function C:describeSchemas(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSchemas, input, options)
end

function C:describeTableStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTableStatistics, input, options)
end

function C:exportMetadataModelAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportMetadataModelAssessment, input, options)
end

function C:getTargetSelectionRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTargetSelectionRules, input, options)
end

function C:importCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportCertificate, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:modifyConversionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyConversionConfiguration, input, options)
end

function C:modifyDataMigration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDataMigration, input, options)
end

function C:modifyDataProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDataProvider, input, options)
end

function C:modifyEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyEndpoint, input, options)
end

function C:modifyEventSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyEventSubscription, input, options)
end

function C:modifyInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceProfile, input, options)
end

function C:modifyMigrationProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyMigrationProject, input, options)
end

function C:modifyReplicationConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyReplicationConfig, input, options)
end

function C:modifyReplicationInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyReplicationInstance, input, options)
end

function C:modifyReplicationSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyReplicationSubnetGroup, input, options)
end

function C:modifyReplicationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyReplicationTask, input, options)
end

function C:moveReplicationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.MoveReplicationTask, input, options)
end

function C:rebootReplicationInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootReplicationInstance, input, options)
end

function C:refreshSchemas(input, options)
   return self:invokeOperation(schemas.Service, schemas.RefreshSchemas, input, options)
end

function C:reloadReplicationTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReloadReplicationTables, input, options)
end

function C:reloadTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReloadTables, input, options)
end

function C:removeTagsFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTagsFromResource, input, options)
end

function C:runFleetAdvisorLsaAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.RunFleetAdvisorLsaAnalysis, input, options)
end

function C:startDataMigration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDataMigration, input, options)
end

function C:startExtensionPackAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartExtensionPackAssociation, input, options)
end

function C:startMetadataModelAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMetadataModelAssessment, input, options)
end

function C:startMetadataModelConversion(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMetadataModelConversion, input, options)
end

function C:startMetadataModelCreation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMetadataModelCreation, input, options)
end

function C:startMetadataModelExportAsScript(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMetadataModelExportAsScript, input, options)
end

function C:startMetadataModelExportToTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMetadataModelExportToTarget, input, options)
end

function C:startMetadataModelImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMetadataModelImport, input, options)
end

function C:startRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRecommendations, input, options)
end

function C:startReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReplication, input, options)
end

function C:startReplicationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReplicationTask, input, options)
end

function C:startReplicationTaskAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReplicationTaskAssessment, input, options)
end

function C:startReplicationTaskAssessmentRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReplicationTaskAssessmentRun, input, options)
end

function C:stopDataMigration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDataMigration, input, options)
end

function C:stopReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopReplication, input, options)
end

function C:stopReplicationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopReplicationTask, input, options)
end

function C:testConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestConnection, input, options)
end

function C:updateSubscriptionsToEventBridge(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubscriptionsToEventBridge, input, options)
end

return M
