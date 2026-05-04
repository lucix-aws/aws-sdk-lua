local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("inspector.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("inspector.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "InspectorService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "inspector", signing_region = cfg.region } }
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

function Client:addAttributesToFindings(input, options)
    return self:invokeOperation(input, {
        name = "AddAttributesToFindings",
        input_schema = types.AddAttributesToFindingsInput,
        output_schema = types.AddAttributesToFindingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAssessmentTarget(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssessmentTarget",
        input_schema = types.CreateAssessmentTargetInput,
        output_schema = types.CreateAssessmentTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAssessmentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssessmentTemplate",
        input_schema = types.CreateAssessmentTemplateInput,
        output_schema = types.CreateAssessmentTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExclusionsPreview(input, options)
    return self:invokeOperation(input, {
        name = "CreateExclusionsPreview",
        input_schema = types.CreateExclusionsPreviewInput,
        output_schema = types.CreateExclusionsPreviewOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourceGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceGroup",
        input_schema = types.CreateResourceGroupInput,
        output_schema = types.CreateResourceGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssessmentRun(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssessmentRun",
        input_schema = types.DeleteAssessmentRunInput,
        output_schema = types.DeleteAssessmentRunOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssessmentTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssessmentTarget",
        input_schema = types.DeleteAssessmentTargetInput,
        output_schema = types.DeleteAssessmentTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssessmentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssessmentTemplate",
        input_schema = types.DeleteAssessmentTemplateInput,
        output_schema = types.DeleteAssessmentTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssessmentRuns(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssessmentRuns",
        input_schema = types.DescribeAssessmentRunsInput,
        output_schema = types.DescribeAssessmentRunsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssessmentTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssessmentTargets",
        input_schema = types.DescribeAssessmentTargetsInput,
        output_schema = types.DescribeAssessmentTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssessmentTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssessmentTemplates",
        input_schema = types.DescribeAssessmentTemplatesInput,
        output_schema = types.DescribeAssessmentTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCrossAccountAccessRole(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCrossAccountAccessRole",
        input_schema = types.DescribeCrossAccountAccessRoleInput,
        output_schema = types.DescribeCrossAccountAccessRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExclusions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExclusions",
        input_schema = types.DescribeExclusionsInput,
        output_schema = types.DescribeExclusionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFindings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFindings",
        input_schema = types.DescribeFindingsInput,
        output_schema = types.DescribeFindingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResourceGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourceGroups",
        input_schema = types.DescribeResourceGroupsInput,
        output_schema = types.DescribeResourceGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRulesPackages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRulesPackages",
        input_schema = types.DescribeRulesPackagesInput,
        output_schema = types.DescribeRulesPackagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssessmentReport(input, options)
    return self:invokeOperation(input, {
        name = "GetAssessmentReport",
        input_schema = types.GetAssessmentReportInput,
        output_schema = types.GetAssessmentReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExclusionsPreview(input, options)
    return self:invokeOperation(input, {
        name = "GetExclusionsPreview",
        input_schema = types.GetExclusionsPreviewInput,
        output_schema = types.GetExclusionsPreviewOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTelemetryMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetTelemetryMetadata",
        input_schema = types.GetTelemetryMetadataInput,
        output_schema = types.GetTelemetryMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssessmentRunAgents(input, options)
    return self:invokeOperation(input, {
        name = "ListAssessmentRunAgents",
        input_schema = types.ListAssessmentRunAgentsInput,
        output_schema = types.ListAssessmentRunAgentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssessmentRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListAssessmentRuns",
        input_schema = types.ListAssessmentRunsInput,
        output_schema = types.ListAssessmentRunsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssessmentTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListAssessmentTargets",
        input_schema = types.ListAssessmentTargetsInput,
        output_schema = types.ListAssessmentTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssessmentTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListAssessmentTemplates",
        input_schema = types.ListAssessmentTemplatesInput,
        output_schema = types.ListAssessmentTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListEventSubscriptions",
        input_schema = types.ListEventSubscriptionsInput,
        output_schema = types.ListEventSubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExclusions(input, options)
    return self:invokeOperation(input, {
        name = "ListExclusions",
        input_schema = types.ListExclusionsInput,
        output_schema = types.ListExclusionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListFindings",
        input_schema = types.ListFindingsInput,
        output_schema = types.ListFindingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRulesPackages(input, options)
    return self:invokeOperation(input, {
        name = "ListRulesPackages",
        input_schema = types.ListRulesPackagesInput,
        output_schema = types.ListRulesPackagesOutput,
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

function Client:previewAgents(input, options)
    return self:invokeOperation(input, {
        name = "PreviewAgents",
        input_schema = types.PreviewAgentsInput,
        output_schema = types.PreviewAgentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerCrossAccountAccessRole(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCrossAccountAccessRole",
        input_schema = types.RegisterCrossAccountAccessRoleInput,
        output_schema = types.RegisterCrossAccountAccessRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeAttributesFromFindings(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAttributesFromFindings",
        input_schema = types.RemoveAttributesFromFindingsInput,
        output_schema = types.RemoveAttributesFromFindingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "SetTagsForResource",
        input_schema = types.SetTagsForResourceInput,
        output_schema = types.SetTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAssessmentRun(input, options)
    return self:invokeOperation(input, {
        name = "StartAssessmentRun",
        input_schema = types.StartAssessmentRunInput,
        output_schema = types.StartAssessmentRunOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopAssessmentRun(input, options)
    return self:invokeOperation(input, {
        name = "StopAssessmentRun",
        input_schema = types.StopAssessmentRunInput,
        output_schema = types.StopAssessmentRunOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:subscribeToEvent(input, options)
    return self:invokeOperation(input, {
        name = "SubscribeToEvent",
        input_schema = types.SubscribeToEventInput,
        output_schema = types.SubscribeToEventOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unsubscribeFromEvent(input, options)
    return self:invokeOperation(input, {
        name = "UnsubscribeFromEvent",
        input_schema = types.UnsubscribeFromEventInput,
        output_schema = types.UnsubscribeFromEventOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAssessmentTarget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssessmentTarget",
        input_schema = types.UpdateAssessmentTargetInput,
        output_schema = types.UpdateAssessmentTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
