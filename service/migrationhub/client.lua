local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("migrationhub.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("migrationhub.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMigrationHub"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mgh", signing_region = cfg.region } }
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

function Client:associateCreatedArtifact(input, options)
    return self:invokeOperation(input, {
        name = "AssociateCreatedArtifact",
        input_schema = types.AssociateCreatedArtifactInput,
        output_schema = types.AssociateCreatedArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateDiscoveredResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDiscoveredResource",
        input_schema = types.AssociateDiscoveredResourceInput,
        output_schema = types.AssociateDiscoveredResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSourceResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSourceResource",
        input_schema = types.AssociateSourceResourceInput,
        output_schema = types.AssociateSourceResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProgressUpdateStream(input, options)
    return self:invokeOperation(input, {
        name = "CreateProgressUpdateStream",
        input_schema = types.CreateProgressUpdateStreamInput,
        output_schema = types.CreateProgressUpdateStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProgressUpdateStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProgressUpdateStream",
        input_schema = types.DeleteProgressUpdateStreamInput,
        output_schema = types.DeleteProgressUpdateStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicationState(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationState",
        input_schema = types.DescribeApplicationStateInput,
        output_schema = types.DescribeApplicationStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMigrationTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMigrationTask",
        input_schema = types.DescribeMigrationTaskInput,
        output_schema = types.DescribeMigrationTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateCreatedArtifact(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateCreatedArtifact",
        input_schema = types.DisassociateCreatedArtifactInput,
        output_schema = types.DisassociateCreatedArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateDiscoveredResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDiscoveredResource",
        input_schema = types.DisassociateDiscoveredResourceInput,
        output_schema = types.DisassociateDiscoveredResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSourceResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSourceResource",
        input_schema = types.DisassociateSourceResourceInput,
        output_schema = types.DisassociateSourceResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importMigrationTask(input, options)
    return self:invokeOperation(input, {
        name = "ImportMigrationTask",
        input_schema = types.ImportMigrationTaskInput,
        output_schema = types.ImportMigrationTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationStates(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationStates",
        input_schema = types.ListApplicationStatesInput,
        output_schema = types.ListApplicationStatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCreatedArtifacts(input, options)
    return self:invokeOperation(input, {
        name = "ListCreatedArtifacts",
        input_schema = types.ListCreatedArtifactsInput,
        output_schema = types.ListCreatedArtifactsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDiscoveredResources(input, options)
    return self:invokeOperation(input, {
        name = "ListDiscoveredResources",
        input_schema = types.ListDiscoveredResourcesInput,
        output_schema = types.ListDiscoveredResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMigrationTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListMigrationTasks",
        input_schema = types.ListMigrationTasksInput,
        output_schema = types.ListMigrationTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMigrationTaskUpdates(input, options)
    return self:invokeOperation(input, {
        name = "ListMigrationTaskUpdates",
        input_schema = types.ListMigrationTaskUpdatesInput,
        output_schema = types.ListMigrationTaskUpdatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProgressUpdateStreams(input, options)
    return self:invokeOperation(input, {
        name = "ListProgressUpdateStreams",
        input_schema = types.ListProgressUpdateStreamsInput,
        output_schema = types.ListProgressUpdateStreamsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSourceResources(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceResources",
        input_schema = types.ListSourceResourcesInput,
        output_schema = types.ListSourceResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:notifyApplicationState(input, options)
    return self:invokeOperation(input, {
        name = "NotifyApplicationState",
        input_schema = types.NotifyApplicationStateInput,
        output_schema = types.NotifyApplicationStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:notifyMigrationTaskState(input, options)
    return self:invokeOperation(input, {
        name = "NotifyMigrationTaskState",
        input_schema = types.NotifyMigrationTaskStateInput,
        output_schema = types.NotifyMigrationTaskStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourceAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutResourceAttributes",
        input_schema = types.PutResourceAttributesInput,
        output_schema = types.PutResourceAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
