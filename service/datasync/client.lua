local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("datasync.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("datasync.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "FmrsService"
    cfg.signing_name = "fmrsservice"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:cancelTaskExecution(input, options)
    return self:invokeOperation(input, {
        name = "CancelTaskExecution",
        input_schema = types.CancelTaskExecutionInput,
        output_schema = types.CancelTaskExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAgent(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgent",
        input_schema = types.CreateAgentInput,
        output_schema = types.CreateAgentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocationAzureBlob(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocationAzureBlob",
        input_schema = types.CreateLocationAzureBlobInput,
        output_schema = types.CreateLocationAzureBlobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocationEfs(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocationEfs",
        input_schema = types.CreateLocationEfsInput,
        output_schema = types.CreateLocationEfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocationFsxLustre(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocationFsxLustre",
        input_schema = types.CreateLocationFsxLustreInput,
        output_schema = types.CreateLocationFsxLustreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocationFsxOntap(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocationFsxOntap",
        input_schema = types.CreateLocationFsxOntapInput,
        output_schema = types.CreateLocationFsxOntapOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocationFsxOpenZfs(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocationFsxOpenZfs",
        input_schema = types.CreateLocationFsxOpenZfsInput,
        output_schema = types.CreateLocationFsxOpenZfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocationFsxWindows(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocationFsxWindows",
        input_schema = types.CreateLocationFsxWindowsInput,
        output_schema = types.CreateLocationFsxWindowsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocationHdfs(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocationHdfs",
        input_schema = types.CreateLocationHdfsInput,
        output_schema = types.CreateLocationHdfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocationNfs(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocationNfs",
        input_schema = types.CreateLocationNfsInput,
        output_schema = types.CreateLocationNfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocationObjectStorage(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocationObjectStorage",
        input_schema = types.CreateLocationObjectStorageInput,
        output_schema = types.CreateLocationObjectStorageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocationS3(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocationS3",
        input_schema = types.CreateLocationS3Input,
        output_schema = types.CreateLocationS3Output,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLocationSmb(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocationSmb",
        input_schema = types.CreateLocationSmbInput,
        output_schema = types.CreateLocationSmbOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateTask",
        input_schema = types.CreateTaskInput,
        output_schema = types.CreateTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAgent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgent",
        input_schema = types.DeleteAgentInput,
        output_schema = types.DeleteAgentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLocation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLocation",
        input_schema = types.DeleteLocationInput,
        output_schema = types.DeleteLocationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTask(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTask",
        input_schema = types.DeleteTaskInput,
        output_schema = types.DeleteTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAgent(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAgent",
        input_schema = types.DescribeAgentInput,
        output_schema = types.DescribeAgentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLocationAzureBlob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocationAzureBlob",
        input_schema = types.DescribeLocationAzureBlobInput,
        output_schema = types.DescribeLocationAzureBlobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLocationEfs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocationEfs",
        input_schema = types.DescribeLocationEfsInput,
        output_schema = types.DescribeLocationEfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLocationFsxLustre(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocationFsxLustre",
        input_schema = types.DescribeLocationFsxLustreInput,
        output_schema = types.DescribeLocationFsxLustreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLocationFsxOntap(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocationFsxOntap",
        input_schema = types.DescribeLocationFsxOntapInput,
        output_schema = types.DescribeLocationFsxOntapOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLocationFsxOpenZfs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocationFsxOpenZfs",
        input_schema = types.DescribeLocationFsxOpenZfsInput,
        output_schema = types.DescribeLocationFsxOpenZfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLocationFsxWindows(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocationFsxWindows",
        input_schema = types.DescribeLocationFsxWindowsInput,
        output_schema = types.DescribeLocationFsxWindowsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLocationHdfs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocationHdfs",
        input_schema = types.DescribeLocationHdfsInput,
        output_schema = types.DescribeLocationHdfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLocationNfs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocationNfs",
        input_schema = types.DescribeLocationNfsInput,
        output_schema = types.DescribeLocationNfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLocationObjectStorage(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocationObjectStorage",
        input_schema = types.DescribeLocationObjectStorageInput,
        output_schema = types.DescribeLocationObjectStorageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLocationS3(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocationS3",
        input_schema = types.DescribeLocationS3Input,
        output_schema = types.DescribeLocationS3Output,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLocationSmb(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocationSmb",
        input_schema = types.DescribeLocationSmbInput,
        output_schema = types.DescribeLocationSmbOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTask",
        input_schema = types.DescribeTaskInput,
        output_schema = types.DescribeTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTaskExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTaskExecution",
        input_schema = types.DescribeTaskExecutionInput,
        output_schema = types.DescribeTaskExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAgents(input, options)
    return self:invokeOperation(input, {
        name = "ListAgents",
        input_schema = types.ListAgentsInput,
        output_schema = types.ListAgentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLocations(input, options)
    return self:invokeOperation(input, {
        name = "ListLocations",
        input_schema = types.ListLocationsInput,
        output_schema = types.ListLocationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTaskExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListTaskExecutions",
        input_schema = types.ListTaskExecutionsInput,
        output_schema = types.ListTaskExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListTasks",
        input_schema = types.ListTasksInput,
        output_schema = types.ListTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startTaskExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartTaskExecution",
        input_schema = types.StartTaskExecutionInput,
        output_schema = types.StartTaskExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAgent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgent",
        input_schema = types.UpdateAgentInput,
        output_schema = types.UpdateAgentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLocationAzureBlob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLocationAzureBlob",
        input_schema = types.UpdateLocationAzureBlobInput,
        output_schema = types.UpdateLocationAzureBlobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLocationEfs(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLocationEfs",
        input_schema = types.UpdateLocationEfsInput,
        output_schema = types.UpdateLocationEfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLocationFsxLustre(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLocationFsxLustre",
        input_schema = types.UpdateLocationFsxLustreInput,
        output_schema = types.UpdateLocationFsxLustreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLocationFsxOntap(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLocationFsxOntap",
        input_schema = types.UpdateLocationFsxOntapInput,
        output_schema = types.UpdateLocationFsxOntapOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLocationFsxOpenZfs(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLocationFsxOpenZfs",
        input_schema = types.UpdateLocationFsxOpenZfsInput,
        output_schema = types.UpdateLocationFsxOpenZfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLocationFsxWindows(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLocationFsxWindows",
        input_schema = types.UpdateLocationFsxWindowsInput,
        output_schema = types.UpdateLocationFsxWindowsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLocationHdfs(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLocationHdfs",
        input_schema = types.UpdateLocationHdfsInput,
        output_schema = types.UpdateLocationHdfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLocationNfs(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLocationNfs",
        input_schema = types.UpdateLocationNfsInput,
        output_schema = types.UpdateLocationNfsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLocationObjectStorage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLocationObjectStorage",
        input_schema = types.UpdateLocationObjectStorageInput,
        output_schema = types.UpdateLocationObjectStorageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLocationS3(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLocationS3",
        input_schema = types.UpdateLocationS3Input,
        output_schema = types.UpdateLocationS3Output,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLocationSmb(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLocationSmb",
        input_schema = types.UpdateLocationSmbInput,
        output_schema = types.UpdateLocationSmbOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTask(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTask",
        input_schema = types.UpdateTaskInput,
        output_schema = types.UpdateTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTaskExecution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTaskExecution",
        input_schema = types.UpdateTaskExecutionInput,
        output_schema = types.UpdateTaskExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
