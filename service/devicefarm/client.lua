local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("devicefarm.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("devicefarm.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DeviceFarm_20150623"
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
        input_schema = types.CreateDevicePoolInput,
        output_schema = types.CreateDevicePoolOutput,
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

function Client:createNetworkProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkProfile",
        input_schema = types.CreateNetworkProfileInput,
        output_schema = types.CreateNetworkProfileOutput,
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
        input_schema = types.CreateProjectInput,
        output_schema = types.CreateProjectOutput,
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
        input_schema = types.CreateRemoteAccessSessionInput,
        output_schema = types.CreateRemoteAccessSessionOutput,
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
        input_schema = types.CreateTestGridProjectInput,
        output_schema = types.CreateTestGridProjectOutput,
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
        input_schema = types.CreateTestGridUrlInput,
        output_schema = types.CreateTestGridUrlOutput,
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
        input_schema = types.CreateUploadInput,
        output_schema = types.CreateUploadOutput,
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
        input_schema = types.CreateVPCEConfigurationInput,
        output_schema = types.CreateVPCEConfigurationOutput,
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
        input_schema = types.DeleteDevicePoolInput,
        output_schema = types.DeleteDevicePoolOutput,
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

function Client:deleteNetworkProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkProfile",
        input_schema = types.DeleteNetworkProfileInput,
        output_schema = types.DeleteNetworkProfileOutput,
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
        input_schema = types.DeleteProjectInput,
        output_schema = types.DeleteProjectOutput,
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
        input_schema = types.DeleteRemoteAccessSessionInput,
        output_schema = types.DeleteRemoteAccessSessionOutput,
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
        input_schema = types.DeleteRunInput,
        output_schema = types.DeleteRunOutput,
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
        input_schema = types.DeleteTestGridProjectInput,
        output_schema = types.DeleteTestGridProjectOutput,
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
        input_schema = types.DeleteUploadInput,
        output_schema = types.DeleteUploadOutput,
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
        input_schema = types.DeleteVPCEConfigurationInput,
        output_schema = types.DeleteVPCEConfigurationOutput,
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
        input_schema = types.GetAccountSettingsInput,
        output_schema = types.GetAccountSettingsOutput,
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
        input_schema = types.GetDeviceInput,
        output_schema = types.GetDeviceOutput,
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
        input_schema = types.GetDeviceInstanceInput,
        output_schema = types.GetDeviceInstanceOutput,
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
        input_schema = types.GetDevicePoolInput,
        output_schema = types.GetDevicePoolOutput,
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
        input_schema = types.GetDevicePoolCompatibilityInput,
        output_schema = types.GetDevicePoolCompatibilityOutput,
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
        input_schema = types.GetInstanceProfileInput,
        output_schema = types.GetInstanceProfileOutput,
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
        input_schema = types.GetJobInput,
        output_schema = types.GetJobOutput,
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
        input_schema = types.GetNetworkProfileInput,
        output_schema = types.GetNetworkProfileOutput,
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
        input_schema = types.GetOfferingStatusInput,
        output_schema = types.GetOfferingStatusOutput,
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
        input_schema = types.GetProjectInput,
        output_schema = types.GetProjectOutput,
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
        input_schema = types.GetRemoteAccessSessionInput,
        output_schema = types.GetRemoteAccessSessionOutput,
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
        input_schema = types.GetRunInput,
        output_schema = types.GetRunOutput,
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
        input_schema = types.GetSuiteInput,
        output_schema = types.GetSuiteOutput,
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
        input_schema = types.GetTestInput,
        output_schema = types.GetTestOutput,
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
        input_schema = types.GetTestGridProjectInput,
        output_schema = types.GetTestGridProjectOutput,
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
        input_schema = types.GetTestGridSessionInput,
        output_schema = types.GetTestGridSessionOutput,
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
        input_schema = types.GetUploadInput,
        output_schema = types.GetUploadOutput,
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
        input_schema = types.GetVPCEConfigurationInput,
        output_schema = types.GetVPCEConfigurationOutput,
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
        input_schema = types.InstallToRemoteAccessSessionInput,
        output_schema = types.InstallToRemoteAccessSessionOutput,
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
        input_schema = types.ListArtifactsInput,
        output_schema = types.ListArtifactsOutput,
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
        input_schema = types.ListDeviceInstancesInput,
        output_schema = types.ListDeviceInstancesOutput,
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
        input_schema = types.ListDevicePoolsInput,
        output_schema = types.ListDevicePoolsOutput,
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
        input_schema = types.ListDevicesInput,
        output_schema = types.ListDevicesOutput,
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
        input_schema = types.ListInstanceProfilesInput,
        output_schema = types.ListInstanceProfilesOutput,
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
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
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
        input_schema = types.ListNetworkProfilesInput,
        output_schema = types.ListNetworkProfilesOutput,
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
        input_schema = types.ListOfferingPromotionsInput,
        output_schema = types.ListOfferingPromotionsOutput,
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
        input_schema = types.ListOfferingsInput,
        output_schema = types.ListOfferingsOutput,
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
        input_schema = types.ListOfferingTransactionsInput,
        output_schema = types.ListOfferingTransactionsOutput,
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
        input_schema = types.ListProjectsInput,
        output_schema = types.ListProjectsOutput,
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
        input_schema = types.ListRemoteAccessSessionsInput,
        output_schema = types.ListRemoteAccessSessionsOutput,
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
        input_schema = types.ListRunsInput,
        output_schema = types.ListRunsOutput,
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
        input_schema = types.ListSamplesInput,
        output_schema = types.ListSamplesOutput,
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
        input_schema = types.ListSuitesInput,
        output_schema = types.ListSuitesOutput,
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

function Client:listTestGridProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListTestGridProjects",
        input_schema = types.ListTestGridProjectsInput,
        output_schema = types.ListTestGridProjectsOutput,
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
        input_schema = types.ListTestGridSessionActionsInput,
        output_schema = types.ListTestGridSessionActionsOutput,
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
        input_schema = types.ListTestGridSessionArtifactsInput,
        output_schema = types.ListTestGridSessionArtifactsOutput,
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
        input_schema = types.ListTestGridSessionsInput,
        output_schema = types.ListTestGridSessionsOutput,
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
        input_schema = types.ListTestsInput,
        output_schema = types.ListTestsOutput,
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
        input_schema = types.ListUniqueProblemsInput,
        output_schema = types.ListUniqueProblemsOutput,
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
        input_schema = types.ListUploadsInput,
        output_schema = types.ListUploadsOutput,
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
        input_schema = types.ListVPCEConfigurationsInput,
        output_schema = types.ListVPCEConfigurationsOutput,
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
        input_schema = types.PurchaseOfferingInput,
        output_schema = types.PurchaseOfferingOutput,
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
        input_schema = types.RenewOfferingInput,
        output_schema = types.RenewOfferingOutput,
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
        input_schema = types.ScheduleRunInput,
        output_schema = types.ScheduleRunOutput,
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
        input_schema = types.StopJobInput,
        output_schema = types.StopJobOutput,
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
        input_schema = types.StopRemoteAccessSessionInput,
        output_schema = types.StopRemoteAccessSessionOutput,
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
        input_schema = types.StopRunInput,
        output_schema = types.StopRunOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateDeviceInstanceInput,
        output_schema = types.UpdateDeviceInstanceOutput,
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
        input_schema = types.UpdateDevicePoolInput,
        output_schema = types.UpdateDevicePoolOutput,
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
        input_schema = types.UpdateInstanceProfileInput,
        output_schema = types.UpdateInstanceProfileOutput,
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
        input_schema = types.UpdateNetworkProfileInput,
        output_schema = types.UpdateNetworkProfileOutput,
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
        input_schema = types.UpdateProjectInput,
        output_schema = types.UpdateProjectOutput,
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
        input_schema = types.UpdateTestGridProjectInput,
        output_schema = types.UpdateTestGridProjectOutput,
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
        input_schema = types.UpdateUploadInput,
        output_schema = types.UpdateUploadOutput,
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
        input_schema = types.UpdateVPCEConfigurationInput,
        output_schema = types.UpdateVPCEConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
