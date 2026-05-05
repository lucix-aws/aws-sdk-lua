local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("inspector.endpoint_rules")
local schemas = require("inspector.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "InspectorService"
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
        input_schema = schemas.AddAttributesToFindingsInput,
        output_schema = schemas.AddAttributesToFindingsOutput,
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
        input_schema = schemas.CreateAssessmentTargetInput,
        output_schema = schemas.CreateAssessmentTargetOutput,
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
        input_schema = schemas.CreateAssessmentTemplateInput,
        output_schema = schemas.CreateAssessmentTemplateOutput,
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
        input_schema = schemas.CreateExclusionsPreviewInput,
        output_schema = schemas.CreateExclusionsPreviewOutput,
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
        input_schema = schemas.CreateResourceGroupInput,
        output_schema = schemas.CreateResourceGroupOutput,
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
        input_schema = schemas.DeleteAssessmentRunInput,
        output_schema = schemas.DeleteAssessmentRunOutput,
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
        input_schema = schemas.DeleteAssessmentTargetInput,
        output_schema = schemas.DeleteAssessmentTargetOutput,
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
        input_schema = schemas.DeleteAssessmentTemplateInput,
        output_schema = schemas.DeleteAssessmentTemplateOutput,
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
        input_schema = schemas.DescribeAssessmentRunsInput,
        output_schema = schemas.DescribeAssessmentRunsOutput,
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
        input_schema = schemas.DescribeAssessmentTargetsInput,
        output_schema = schemas.DescribeAssessmentTargetsOutput,
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
        input_schema = schemas.DescribeAssessmentTemplatesInput,
        output_schema = schemas.DescribeAssessmentTemplatesOutput,
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
        input_schema = schemas.DescribeCrossAccountAccessRoleInput,
        output_schema = schemas.DescribeCrossAccountAccessRoleOutput,
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
        input_schema = schemas.DescribeExclusionsInput,
        output_schema = schemas.DescribeExclusionsOutput,
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
        input_schema = schemas.DescribeFindingsInput,
        output_schema = schemas.DescribeFindingsOutput,
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
        input_schema = schemas.DescribeResourceGroupsInput,
        output_schema = schemas.DescribeResourceGroupsOutput,
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
        input_schema = schemas.DescribeRulesPackagesInput,
        output_schema = schemas.DescribeRulesPackagesOutput,
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
        input_schema = schemas.GetAssessmentReportInput,
        output_schema = schemas.GetAssessmentReportOutput,
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
        input_schema = schemas.GetExclusionsPreviewInput,
        output_schema = schemas.GetExclusionsPreviewOutput,
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
        input_schema = schemas.GetTelemetryMetadataInput,
        output_schema = schemas.GetTelemetryMetadataOutput,
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
        input_schema = schemas.ListAssessmentRunAgentsInput,
        output_schema = schemas.ListAssessmentRunAgentsOutput,
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
        input_schema = schemas.ListAssessmentRunsInput,
        output_schema = schemas.ListAssessmentRunsOutput,
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
        input_schema = schemas.ListAssessmentTargetsInput,
        output_schema = schemas.ListAssessmentTargetsOutput,
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
        input_schema = schemas.ListAssessmentTemplatesInput,
        output_schema = schemas.ListAssessmentTemplatesOutput,
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
        input_schema = schemas.ListEventSubscriptionsInput,
        output_schema = schemas.ListEventSubscriptionsOutput,
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
        input_schema = schemas.ListExclusionsInput,
        output_schema = schemas.ListExclusionsOutput,
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
        input_schema = schemas.ListFindingsInput,
        output_schema = schemas.ListFindingsOutput,
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
        input_schema = schemas.ListRulesPackagesInput,
        output_schema = schemas.ListRulesPackagesOutput,
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

function Client:previewAgents(input, options)
    return self:invokeOperation(input, {
        name = "PreviewAgents",
        input_schema = schemas.PreviewAgentsInput,
        output_schema = schemas.PreviewAgentsOutput,
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
        input_schema = schemas.RegisterCrossAccountAccessRoleInput,
        output_schema = schemas.RegisterCrossAccountAccessRoleOutput,
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
        input_schema = schemas.RemoveAttributesFromFindingsInput,
        output_schema = schemas.RemoveAttributesFromFindingsOutput,
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
        input_schema = schemas.SetTagsForResourceInput,
        output_schema = schemas.SetTagsForResourceOutput,
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
        input_schema = schemas.StartAssessmentRunInput,
        output_schema = schemas.StartAssessmentRunOutput,
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
        input_schema = schemas.StopAssessmentRunInput,
        output_schema = schemas.StopAssessmentRunOutput,
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
        input_schema = schemas.SubscribeToEventInput,
        output_schema = schemas.SubscribeToEventOutput,
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
        input_schema = schemas.UnsubscribeFromEventInput,
        output_schema = schemas.UnsubscribeFromEventOutput,
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
        input_schema = schemas.UpdateAssessmentTargetInput,
        output_schema = schemas.UpdateAssessmentTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
