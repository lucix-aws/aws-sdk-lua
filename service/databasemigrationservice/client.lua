local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("databasemigrationservice.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("databasemigrationservice.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonDMSv20160101"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "dms", signing_region = cfg.region } }
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

function Client:addTagsToResource(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToResource",
        input_schema = types.AddTagsToResourceInput,
        output_schema = types.AddTagsToResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:applyPendingMaintenanceAction(input, options)
    return self:invokeOperation(input, {
        name = "ApplyPendingMaintenanceAction",
        input_schema = types.ApplyPendingMaintenanceActionInput,
        output_schema = types.ApplyPendingMaintenanceActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchStartRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "BatchStartRecommendations",
        input_schema = types.BatchStartRecommendationsInput,
        output_schema = types.BatchStartRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMetadataModelConversion(input, options)
    return self:invokeOperation(input, {
        name = "CancelMetadataModelConversion",
        input_schema = types.CancelMetadataModelConversionInput,
        output_schema = types.CancelMetadataModelConversionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMetadataModelCreation(input, options)
    return self:invokeOperation(input, {
        name = "CancelMetadataModelCreation",
        input_schema = types.CancelMetadataModelCreationInput,
        output_schema = types.CancelMetadataModelCreationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelReplicationTaskAssessmentRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelReplicationTaskAssessmentRun",
        input_schema = types.CancelReplicationTaskAssessmentRunInput,
        output_schema = types.CancelReplicationTaskAssessmentRunOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataMigration(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataMigration",
        input_schema = types.CreateDataMigrationInput,
        output_schema = types.CreateDataMigrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataProvider",
        input_schema = types.CreateDataProviderInput,
        output_schema = types.CreateDataProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateEndpoint",
        input_schema = types.CreateEndpointInput,
        output_schema = types.CreateEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventSubscription",
        input_schema = types.CreateEventSubscriptionInput,
        output_schema = types.CreateEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFleetAdvisorCollector(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleetAdvisorCollector",
        input_schema = types.CreateFleetAdvisorCollectorInput,
        output_schema = types.CreateFleetAdvisorCollectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstanceProfile",
        input_schema = types.CreateInstanceProfileInput,
        output_schema = types.CreateInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMigrationProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateMigrationProject",
        input_schema = types.CreateMigrationProjectInput,
        output_schema = types.CreateMigrationProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReplicationConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicationConfig",
        input_schema = types.CreateReplicationConfigInput,
        output_schema = types.CreateReplicationConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReplicationInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicationInstance",
        input_schema = types.CreateReplicationInstanceInput,
        output_schema = types.CreateReplicationInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReplicationSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicationSubnetGroup",
        input_schema = types.CreateReplicationSubnetGroupInput,
        output_schema = types.CreateReplicationSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReplicationTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicationTask",
        input_schema = types.CreateReplicationTaskInput,
        output_schema = types.CreateReplicationTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCertificate",
        input_schema = types.DeleteCertificateInput,
        output_schema = types.DeleteCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = types.DeleteConnectionInput,
        output_schema = types.DeleteConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataMigration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataMigration",
        input_schema = types.DeleteDataMigrationInput,
        output_schema = types.DeleteDataMigrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataProvider",
        input_schema = types.DeleteDataProviderInput,
        output_schema = types.DeleteDataProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpoint",
        input_schema = types.DeleteEndpointInput,
        output_schema = types.DeleteEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventSubscription",
        input_schema = types.DeleteEventSubscriptionInput,
        output_schema = types.DeleteEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFleetAdvisorCollector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleetAdvisorCollector",
        input_schema = types.DeleteFleetAdvisorCollectorInput,
        output_schema = types.DeleteFleetAdvisorCollectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFleetAdvisorDatabases(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleetAdvisorDatabases",
        input_schema = types.DeleteFleetAdvisorDatabasesInput,
        output_schema = types.DeleteFleetAdvisorDatabasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstanceProfile",
        input_schema = types.DeleteInstanceProfileInput,
        output_schema = types.DeleteInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMigrationProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMigrationProject",
        input_schema = types.DeleteMigrationProjectInput,
        output_schema = types.DeleteMigrationProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReplicationConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationConfig",
        input_schema = types.DeleteReplicationConfigInput,
        output_schema = types.DeleteReplicationConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReplicationInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationInstance",
        input_schema = types.DeleteReplicationInstanceInput,
        output_schema = types.DeleteReplicationInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReplicationSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationSubnetGroup",
        input_schema = types.DeleteReplicationSubnetGroupInput,
        output_schema = types.DeleteReplicationSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReplicationTask(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationTask",
        input_schema = types.DeleteReplicationTaskInput,
        output_schema = types.DeleteReplicationTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReplicationTaskAssessmentRun(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationTaskAssessmentRun",
        input_schema = types.DeleteReplicationTaskAssessmentRunInput,
        output_schema = types.DeleteReplicationTaskAssessmentRunOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAttributes",
        input_schema = types.DescribeAccountAttributesInput,
        output_schema = types.DescribeAccountAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicableIndividualAssessments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicableIndividualAssessments",
        input_schema = types.DescribeApplicableIndividualAssessmentsInput,
        output_schema = types.DescribeApplicableIndividualAssessmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCertificates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificates",
        input_schema = types.DescribeCertificatesInput,
        output_schema = types.DescribeCertificatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnections",
        input_schema = types.DescribeConnectionsInput,
        output_schema = types.DescribeConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConversionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConversionConfiguration",
        input_schema = types.DescribeConversionConfigurationInput,
        output_schema = types.DescribeConversionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataMigrations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataMigrations",
        input_schema = types.DescribeDataMigrationsInput,
        output_schema = types.DescribeDataMigrationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataProviders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataProviders",
        input_schema = types.DescribeDataProvidersInput,
        output_schema = types.DescribeDataProvidersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpoints",
        input_schema = types.DescribeEndpointsInput,
        output_schema = types.DescribeEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEndpointSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpointSettings",
        input_schema = types.DescribeEndpointSettingsInput,
        output_schema = types.DescribeEndpointSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEndpointTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpointTypes",
        input_schema = types.DescribeEndpointTypesInput,
        output_schema = types.DescribeEndpointTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEngineVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEngineVersions",
        input_schema = types.DescribeEngineVersionsInput,
        output_schema = types.DescribeEngineVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventCategories(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventCategories",
        input_schema = types.DescribeEventCategoriesInput,
        output_schema = types.DescribeEventCategoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEvents",
        input_schema = types.DescribeEventsInput,
        output_schema = types.DescribeEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventSubscriptions",
        input_schema = types.DescribeEventSubscriptionsInput,
        output_schema = types.DescribeEventSubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExtensionPackAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExtensionPackAssociations",
        input_schema = types.DescribeExtensionPackAssociationsInput,
        output_schema = types.DescribeExtensionPackAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetAdvisorCollectors(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetAdvisorCollectors",
        input_schema = types.DescribeFleetAdvisorCollectorsInput,
        output_schema = types.DescribeFleetAdvisorCollectorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetAdvisorDatabases(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetAdvisorDatabases",
        input_schema = types.DescribeFleetAdvisorDatabasesInput,
        output_schema = types.DescribeFleetAdvisorDatabasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetAdvisorLsaAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetAdvisorLsaAnalysis",
        input_schema = types.DescribeFleetAdvisorLsaAnalysisInput,
        output_schema = types.DescribeFleetAdvisorLsaAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetAdvisorSchemaObjectSummary(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetAdvisorSchemaObjectSummary",
        input_schema = types.DescribeFleetAdvisorSchemaObjectSummaryInput,
        output_schema = types.DescribeFleetAdvisorSchemaObjectSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetAdvisorSchemas(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetAdvisorSchemas",
        input_schema = types.DescribeFleetAdvisorSchemasInput,
        output_schema = types.DescribeFleetAdvisorSchemasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceProfiles(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceProfiles",
        input_schema = types.DescribeInstanceProfilesInput,
        output_schema = types.DescribeInstanceProfilesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMetadataModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetadataModel",
        input_schema = types.DescribeMetadataModelInput,
        output_schema = types.DescribeMetadataModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMetadataModelAssessments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetadataModelAssessments",
        input_schema = types.DescribeMetadataModelAssessmentsInput,
        output_schema = types.DescribeMetadataModelAssessmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMetadataModelChildren(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetadataModelChildren",
        input_schema = types.DescribeMetadataModelChildrenInput,
        output_schema = types.DescribeMetadataModelChildrenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMetadataModelConversions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetadataModelConversions",
        input_schema = types.DescribeMetadataModelConversionsInput,
        output_schema = types.DescribeMetadataModelConversionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMetadataModelCreations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetadataModelCreations",
        input_schema = types.DescribeMetadataModelCreationsInput,
        output_schema = types.DescribeMetadataModelCreationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMetadataModelExportsAsScript(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetadataModelExportsAsScript",
        input_schema = types.DescribeMetadataModelExportsAsScriptInput,
        output_schema = types.DescribeMetadataModelExportsAsScriptOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMetadataModelExportsToTarget(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetadataModelExportsToTarget",
        input_schema = types.DescribeMetadataModelExportsToTargetInput,
        output_schema = types.DescribeMetadataModelExportsToTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMetadataModelImports(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetadataModelImports",
        input_schema = types.DescribeMetadataModelImportsInput,
        output_schema = types.DescribeMetadataModelImportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMigrationProjects(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMigrationProjects",
        input_schema = types.DescribeMigrationProjectsInput,
        output_schema = types.DescribeMigrationProjectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrderableReplicationInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrderableReplicationInstances",
        input_schema = types.DescribeOrderableReplicationInstancesInput,
        output_schema = types.DescribeOrderableReplicationInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePendingMaintenanceActions(input, options)
    return self:invokeOperation(input, {
        name = "DescribePendingMaintenanceActions",
        input_schema = types.DescribePendingMaintenanceActionsInput,
        output_schema = types.DescribePendingMaintenanceActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRecommendationLimitations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecommendationLimitations",
        input_schema = types.DescribeRecommendationLimitationsInput,
        output_schema = types.DescribeRecommendationLimitationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecommendations",
        input_schema = types.DescribeRecommendationsInput,
        output_schema = types.DescribeRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRefreshSchemasStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRefreshSchemasStatus",
        input_schema = types.DescribeRefreshSchemasStatusInput,
        output_schema = types.DescribeRefreshSchemasStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationConfigs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationConfigs",
        input_schema = types.DescribeReplicationConfigsInput,
        output_schema = types.DescribeReplicationConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationInstances",
        input_schema = types.DescribeReplicationInstancesInput,
        output_schema = types.DescribeReplicationInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationInstanceTaskLogs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationInstanceTaskLogs",
        input_schema = types.DescribeReplicationInstanceTaskLogsInput,
        output_schema = types.DescribeReplicationInstanceTaskLogsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplications",
        input_schema = types.DescribeReplicationsInput,
        output_schema = types.DescribeReplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationSubnetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationSubnetGroups",
        input_schema = types.DescribeReplicationSubnetGroupsInput,
        output_schema = types.DescribeReplicationSubnetGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationTableStatistics(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationTableStatistics",
        input_schema = types.DescribeReplicationTableStatisticsInput,
        output_schema = types.DescribeReplicationTableStatisticsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationTaskAssessmentResults(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationTaskAssessmentResults",
        input_schema = types.DescribeReplicationTaskAssessmentResultsInput,
        output_schema = types.DescribeReplicationTaskAssessmentResultsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationTaskAssessmentRuns(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationTaskAssessmentRuns",
        input_schema = types.DescribeReplicationTaskAssessmentRunsInput,
        output_schema = types.DescribeReplicationTaskAssessmentRunsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationTaskIndividualAssessments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationTaskIndividualAssessments",
        input_schema = types.DescribeReplicationTaskIndividualAssessmentsInput,
        output_schema = types.DescribeReplicationTaskIndividualAssessmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplicationTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplicationTasks",
        input_schema = types.DescribeReplicationTasksInput,
        output_schema = types.DescribeReplicationTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSchemas(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSchemas",
        input_schema = types.DescribeSchemasInput,
        output_schema = types.DescribeSchemasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTableStatistics(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTableStatistics",
        input_schema = types.DescribeTableStatisticsInput,
        output_schema = types.DescribeTableStatisticsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportMetadataModelAssessment(input, options)
    return self:invokeOperation(input, {
        name = "ExportMetadataModelAssessment",
        input_schema = types.ExportMetadataModelAssessmentInput,
        output_schema = types.ExportMetadataModelAssessmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTargetSelectionRules(input, options)
    return self:invokeOperation(input, {
        name = "GetTargetSelectionRules",
        input_schema = types.GetTargetSelectionRulesInput,
        output_schema = types.GetTargetSelectionRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importCertificate(input, options)
    return self:invokeOperation(input, {
        name = "ImportCertificate",
        input_schema = types.ImportCertificateInput,
        output_schema = types.ImportCertificateOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyConversionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ModifyConversionConfiguration",
        input_schema = types.ModifyConversionConfigurationInput,
        output_schema = types.ModifyConversionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDataMigration(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDataMigration",
        input_schema = types.ModifyDataMigrationInput,
        output_schema = types.ModifyDataMigrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDataProvider(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDataProvider",
        input_schema = types.ModifyDataProviderInput,
        output_schema = types.ModifyDataProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "ModifyEndpoint",
        input_schema = types.ModifyEndpointInput,
        output_schema = types.ModifyEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "ModifyEventSubscription",
        input_schema = types.ModifyEventSubscriptionInput,
        output_schema = types.ModifyEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceProfile",
        input_schema = types.ModifyInstanceProfileInput,
        output_schema = types.ModifyInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyMigrationProject(input, options)
    return self:invokeOperation(input, {
        name = "ModifyMigrationProject",
        input_schema = types.ModifyMigrationProjectInput,
        output_schema = types.ModifyMigrationProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyReplicationConfig(input, options)
    return self:invokeOperation(input, {
        name = "ModifyReplicationConfig",
        input_schema = types.ModifyReplicationConfigInput,
        output_schema = types.ModifyReplicationConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyReplicationInstance(input, options)
    return self:invokeOperation(input, {
        name = "ModifyReplicationInstance",
        input_schema = types.ModifyReplicationInstanceInput,
        output_schema = types.ModifyReplicationInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyReplicationSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyReplicationSubnetGroup",
        input_schema = types.ModifyReplicationSubnetGroupInput,
        output_schema = types.ModifyReplicationSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyReplicationTask(input, options)
    return self:invokeOperation(input, {
        name = "ModifyReplicationTask",
        input_schema = types.ModifyReplicationTaskInput,
        output_schema = types.ModifyReplicationTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:moveReplicationTask(input, options)
    return self:invokeOperation(input, {
        name = "MoveReplicationTask",
        input_schema = types.MoveReplicationTaskInput,
        output_schema = types.MoveReplicationTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootReplicationInstance(input, options)
    return self:invokeOperation(input, {
        name = "RebootReplicationInstance",
        input_schema = types.RebootReplicationInstanceInput,
        output_schema = types.RebootReplicationInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:refreshSchemas(input, options)
    return self:invokeOperation(input, {
        name = "RefreshSchemas",
        input_schema = types.RefreshSchemasInput,
        output_schema = types.RefreshSchemasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:reloadReplicationTables(input, options)
    return self:invokeOperation(input, {
        name = "ReloadReplicationTables",
        input_schema = types.ReloadReplicationTablesInput,
        output_schema = types.ReloadReplicationTablesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:reloadTables(input, options)
    return self:invokeOperation(input, {
        name = "ReloadTables",
        input_schema = types.ReloadTablesInput,
        output_schema = types.ReloadTablesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTagsFromResource(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromResource",
        input_schema = types.RemoveTagsFromResourceInput,
        output_schema = types.RemoveTagsFromResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:runFleetAdvisorLsaAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "RunFleetAdvisorLsaAnalysis",
        input_schema = types.RunFleetAdvisorLsaAnalysisInput,
        output_schema = types.RunFleetAdvisorLsaAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDataMigration(input, options)
    return self:invokeOperation(input, {
        name = "StartDataMigration",
        input_schema = types.StartDataMigrationInput,
        output_schema = types.StartDataMigrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startExtensionPackAssociation(input, options)
    return self:invokeOperation(input, {
        name = "StartExtensionPackAssociation",
        input_schema = types.StartExtensionPackAssociationInput,
        output_schema = types.StartExtensionPackAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMetadataModelAssessment(input, options)
    return self:invokeOperation(input, {
        name = "StartMetadataModelAssessment",
        input_schema = types.StartMetadataModelAssessmentInput,
        output_schema = types.StartMetadataModelAssessmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMetadataModelConversion(input, options)
    return self:invokeOperation(input, {
        name = "StartMetadataModelConversion",
        input_schema = types.StartMetadataModelConversionInput,
        output_schema = types.StartMetadataModelConversionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMetadataModelCreation(input, options)
    return self:invokeOperation(input, {
        name = "StartMetadataModelCreation",
        input_schema = types.StartMetadataModelCreationInput,
        output_schema = types.StartMetadataModelCreationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMetadataModelExportAsScript(input, options)
    return self:invokeOperation(input, {
        name = "StartMetadataModelExportAsScript",
        input_schema = types.StartMetadataModelExportAsScriptInput,
        output_schema = types.StartMetadataModelExportAsScriptOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMetadataModelExportToTarget(input, options)
    return self:invokeOperation(input, {
        name = "StartMetadataModelExportToTarget",
        input_schema = types.StartMetadataModelExportToTargetInput,
        output_schema = types.StartMetadataModelExportToTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMetadataModelImport(input, options)
    return self:invokeOperation(input, {
        name = "StartMetadataModelImport",
        input_schema = types.StartMetadataModelImportInput,
        output_schema = types.StartMetadataModelImportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "StartRecommendations",
        input_schema = types.StartRecommendationsInput,
        output_schema = types.StartRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startReplicationTask(input, options)
    return self:invokeOperation(input, {
        name = "StartReplicationTask",
        input_schema = types.StartReplicationTaskInput,
        output_schema = types.StartReplicationTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startReplicationTaskAssessment(input, options)
    return self:invokeOperation(input, {
        name = "StartReplicationTaskAssessment",
        input_schema = types.StartReplicationTaskAssessmentInput,
        output_schema = types.StartReplicationTaskAssessmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startReplicationTaskAssessmentRun(input, options)
    return self:invokeOperation(input, {
        name = "StartReplicationTaskAssessmentRun",
        input_schema = types.StartReplicationTaskAssessmentRunInput,
        output_schema = types.StartReplicationTaskAssessmentRunOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDataMigration(input, options)
    return self:invokeOperation(input, {
        name = "StopDataMigration",
        input_schema = types.StopDataMigrationInput,
        output_schema = types.StopDataMigrationOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopReplicationTask(input, options)
    return self:invokeOperation(input, {
        name = "StopReplicationTask",
        input_schema = types.StopReplicationTaskInput,
        output_schema = types.StopReplicationTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testConnection(input, options)
    return self:invokeOperation(input, {
        name = "TestConnection",
        input_schema = types.TestConnectionInput,
        output_schema = types.TestConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubscriptionsToEventBridge(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriptionsToEventBridge",
        input_schema = types.UpdateSubscriptionsToEventBridgeInput,
        output_schema = types.UpdateSubscriptionsToEventBridgeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
