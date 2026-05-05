local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("devicefarm.endpoint_rules")
local schemas = require("devicefarm.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DeviceFarm_20150623"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "devicefarm", signing_region = cfg.region } }
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

function Client:createDevicePool(input, options)
    return self:invokeOperation(input, {
        name = "CreateDevicePool",
        input_schema = schemas.CreateDevicePoolInput,
        output_schema = schemas.CreateDevicePoolOutput,
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
        input_schema = schemas.CreateInstanceProfileInput,
        output_schema = schemas.CreateInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetworkProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkProfile",
        input_schema = schemas.CreateNetworkProfileInput,
        output_schema = schemas.CreateNetworkProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = schemas.CreateProjectInput,
        output_schema = schemas.CreateProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRemoteAccessSession(input, options)
    return self:invokeOperation(input, {
        name = "CreateRemoteAccessSession",
        input_schema = schemas.CreateRemoteAccessSessionInput,
        output_schema = schemas.CreateRemoteAccessSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTestGridProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateTestGridProject",
        input_schema = schemas.CreateTestGridProjectInput,
        output_schema = schemas.CreateTestGridProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTestGridUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreateTestGridUrl",
        input_schema = schemas.CreateTestGridUrlInput,
        output_schema = schemas.CreateTestGridUrlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUpload(input, options)
    return self:invokeOperation(input, {
        name = "CreateUpload",
        input_schema = schemas.CreateUploadInput,
        output_schema = schemas.CreateUploadOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVPCEConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateVPCEConfiguration",
        input_schema = schemas.CreateVPCEConfigurationInput,
        output_schema = schemas.CreateVPCEConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDevicePool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDevicePool",
        input_schema = schemas.DeleteDevicePoolInput,
        output_schema = schemas.DeleteDevicePoolOutput,
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
        input_schema = schemas.DeleteInstanceProfileInput,
        output_schema = schemas.DeleteInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkProfile",
        input_schema = schemas.DeleteNetworkProfileInput,
        output_schema = schemas.DeleteNetworkProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = schemas.DeleteProjectInput,
        output_schema = schemas.DeleteProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRemoteAccessSession(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRemoteAccessSession",
        input_schema = schemas.DeleteRemoteAccessSessionInput,
        output_schema = schemas.DeleteRemoteAccessSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRun(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRun",
        input_schema = schemas.DeleteRunInput,
        output_schema = schemas.DeleteRunOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTestGridProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTestGridProject",
        input_schema = schemas.DeleteTestGridProjectInput,
        output_schema = schemas.DeleteTestGridProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUpload(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUpload",
        input_schema = schemas.DeleteUploadInput,
        output_schema = schemas.DeleteUploadOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVPCEConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVPCEConfiguration",
        input_schema = schemas.DeleteVPCEConfigurationInput,
        output_schema = schemas.DeleteVPCEConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSettings",
        input_schema = schemas.GetAccountSettingsInput,
        output_schema = schemas.GetAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDevice(input, options)
    return self:invokeOperation(input, {
        name = "GetDevice",
        input_schema = schemas.GetDeviceInput,
        output_schema = schemas.GetDeviceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeviceInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetDeviceInstance",
        input_schema = schemas.GetDeviceInstanceInput,
        output_schema = schemas.GetDeviceInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDevicePool(input, options)
    return self:invokeOperation(input, {
        name = "GetDevicePool",
        input_schema = schemas.GetDevicePoolInput,
        output_schema = schemas.GetDevicePoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDevicePoolCompatibility(input, options)
    return self:invokeOperation(input, {
        name = "GetDevicePoolCompatibility",
        input_schema = schemas.GetDevicePoolCompatibilityInput,
        output_schema = schemas.GetDevicePoolCompatibilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceProfile",
        input_schema = schemas.GetInstanceProfileInput,
        output_schema = schemas.GetInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJob(input, options)
    return self:invokeOperation(input, {
        name = "GetJob",
        input_schema = schemas.GetJobInput,
        output_schema = schemas.GetJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkProfile",
        input_schema = schemas.GetNetworkProfileInput,
        output_schema = schemas.GetNetworkProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOfferingStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetOfferingStatus",
        input_schema = schemas.GetOfferingStatusInput,
        output_schema = schemas.GetOfferingStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProject(input, options)
    return self:invokeOperation(input, {
        name = "GetProject",
        input_schema = schemas.GetProjectInput,
        output_schema = schemas.GetProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRemoteAccessSession(input, options)
    return self:invokeOperation(input, {
        name = "GetRemoteAccessSession",
        input_schema = schemas.GetRemoteAccessSessionInput,
        output_schema = schemas.GetRemoteAccessSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRun(input, options)
    return self:invokeOperation(input, {
        name = "GetRun",
        input_schema = schemas.GetRunInput,
        output_schema = schemas.GetRunOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSuite(input, options)
    return self:invokeOperation(input, {
        name = "GetSuite",
        input_schema = schemas.GetSuiteInput,
        output_schema = schemas.GetSuiteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTest(input, options)
    return self:invokeOperation(input, {
        name = "GetTest",
        input_schema = schemas.GetTestInput,
        output_schema = schemas.GetTestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTestGridProject(input, options)
    return self:invokeOperation(input, {
        name = "GetTestGridProject",
        input_schema = schemas.GetTestGridProjectInput,
        output_schema = schemas.GetTestGridProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTestGridSession(input, options)
    return self:invokeOperation(input, {
        name = "GetTestGridSession",
        input_schema = schemas.GetTestGridSessionInput,
        output_schema = schemas.GetTestGridSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUpload(input, options)
    return self:invokeOperation(input, {
        name = "GetUpload",
        input_schema = schemas.GetUploadInput,
        output_schema = schemas.GetUploadOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVPCEConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetVPCEConfiguration",
        input_schema = schemas.GetVPCEConfigurationInput,
        output_schema = schemas.GetVPCEConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:installToRemoteAccessSession(input, options)
    return self:invokeOperation(input, {
        name = "InstallToRemoteAccessSession",
        input_schema = schemas.InstallToRemoteAccessSessionInput,
        output_schema = schemas.InstallToRemoteAccessSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listArtifacts(input, options)
    return self:invokeOperation(input, {
        name = "ListArtifacts",
        input_schema = schemas.ListArtifactsInput,
        output_schema = schemas.ListArtifactsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeviceInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListDeviceInstances",
        input_schema = schemas.ListDeviceInstancesInput,
        output_schema = schemas.ListDeviceInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDevicePools(input, options)
    return self:invokeOperation(input, {
        name = "ListDevicePools",
        input_schema = schemas.ListDevicePoolsInput,
        output_schema = schemas.ListDevicePoolsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListDevices",
        input_schema = schemas.ListDevicesInput,
        output_schema = schemas.ListDevicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstanceProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceProfiles",
        input_schema = schemas.ListInstanceProfilesInput,
        output_schema = schemas.ListInstanceProfilesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = schemas.ListJobsInput,
        output_schema = schemas.ListJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkProfiles",
        input_schema = schemas.ListNetworkProfilesInput,
        output_schema = schemas.ListNetworkProfilesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOfferingPromotions(input, options)
    return self:invokeOperation(input, {
        name = "ListOfferingPromotions",
        input_schema = schemas.ListOfferingPromotionsInput,
        output_schema = schemas.ListOfferingPromotionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOfferings(input, options)
    return self:invokeOperation(input, {
        name = "ListOfferings",
        input_schema = schemas.ListOfferingsInput,
        output_schema = schemas.ListOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOfferingTransactions(input, options)
    return self:invokeOperation(input, {
        name = "ListOfferingTransactions",
        input_schema = schemas.ListOfferingTransactionsInput,
        output_schema = schemas.ListOfferingTransactionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProjects",
        input_schema = schemas.ListProjectsInput,
        output_schema = schemas.ListProjectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRemoteAccessSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListRemoteAccessSessions",
        input_schema = schemas.ListRemoteAccessSessionsInput,
        output_schema = schemas.ListRemoteAccessSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListRuns",
        input_schema = schemas.ListRunsInput,
        output_schema = schemas.ListRunsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSamples(input, options)
    return self:invokeOperation(input, {
        name = "ListSamples",
        input_schema = schemas.ListSamplesInput,
        output_schema = schemas.ListSamplesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSuites(input, options)
    return self:invokeOperation(input, {
        name = "ListSuites",
        input_schema = schemas.ListSuitesInput,
        output_schema = schemas.ListSuitesOutput,
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

function Client:listTestGridProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListTestGridProjects",
        input_schema = schemas.ListTestGridProjectsInput,
        output_schema = schemas.ListTestGridProjectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTestGridSessionActions(input, options)
    return self:invokeOperation(input, {
        name = "ListTestGridSessionActions",
        input_schema = schemas.ListTestGridSessionActionsInput,
        output_schema = schemas.ListTestGridSessionActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTestGridSessionArtifacts(input, options)
    return self:invokeOperation(input, {
        name = "ListTestGridSessionArtifacts",
        input_schema = schemas.ListTestGridSessionArtifactsInput,
        output_schema = schemas.ListTestGridSessionArtifactsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTestGridSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListTestGridSessions",
        input_schema = schemas.ListTestGridSessionsInput,
        output_schema = schemas.ListTestGridSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTests(input, options)
    return self:invokeOperation(input, {
        name = "ListTests",
        input_schema = schemas.ListTestsInput,
        output_schema = schemas.ListTestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUniqueProblems(input, options)
    return self:invokeOperation(input, {
        name = "ListUniqueProblems",
        input_schema = schemas.ListUniqueProblemsInput,
        output_schema = schemas.ListUniqueProblemsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUploads(input, options)
    return self:invokeOperation(input, {
        name = "ListUploads",
        input_schema = schemas.ListUploadsInput,
        output_schema = schemas.ListUploadsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVPCEConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListVPCEConfigurations",
        input_schema = schemas.ListVPCEConfigurationsInput,
        output_schema = schemas.ListVPCEConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseOffering",
        input_schema = schemas.PurchaseOfferingInput,
        output_schema = schemas.PurchaseOfferingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:renewOffering(input, options)
    return self:invokeOperation(input, {
        name = "RenewOffering",
        input_schema = schemas.RenewOfferingInput,
        output_schema = schemas.RenewOfferingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:scheduleRun(input, options)
    return self:invokeOperation(input, {
        name = "ScheduleRun",
        input_schema = schemas.ScheduleRunInput,
        output_schema = schemas.ScheduleRunOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopJob(input, options)
    return self:invokeOperation(input, {
        name = "StopJob",
        input_schema = schemas.StopJobInput,
        output_schema = schemas.StopJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopRemoteAccessSession(input, options)
    return self:invokeOperation(input, {
        name = "StopRemoteAccessSession",
        input_schema = schemas.StopRemoteAccessSessionInput,
        output_schema = schemas.StopRemoteAccessSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopRun(input, options)
    return self:invokeOperation(input, {
        name = "StopRun",
        input_schema = schemas.StopRunInput,
        output_schema = schemas.StopRunOutput,
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

function Client:updateDeviceInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeviceInstance",
        input_schema = schemas.UpdateDeviceInstanceInput,
        output_schema = schemas.UpdateDeviceInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDevicePool(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDevicePool",
        input_schema = schemas.UpdateDevicePoolInput,
        output_schema = schemas.UpdateDevicePoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInstanceProfile",
        input_schema = schemas.UpdateInstanceProfileInput,
        output_schema = schemas.UpdateInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNetworkProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetworkProfile",
        input_schema = schemas.UpdateNetworkProfileInput,
        output_schema = schemas.UpdateNetworkProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProject",
        input_schema = schemas.UpdateProjectInput,
        output_schema = schemas.UpdateProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTestGridProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTestGridProject",
        input_schema = schemas.UpdateTestGridProjectInput,
        output_schema = schemas.UpdateTestGridProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUpload(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUpload",
        input_schema = schemas.UpdateUploadInput,
        output_schema = schemas.UpdateUploadOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVPCEConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVPCEConfiguration",
        input_schema = schemas.UpdateVPCEConfigurationInput,
        output_schema = schemas.UpdateVPCEConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
