local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("partnercentralselling.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("partnercentralselling.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSPartnerCentralSelling"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "partnercentral-selling", signing_region = cfg.region } }
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

function Client:acceptEngagementInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptEngagementInvitation",
        input_schema = types.AcceptEngagementInvitationInput,
        output_schema = types.AcceptEngagementInvitationOutput,
        http_method = "POST",
        http_path = "/AcceptEngagementInvitation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:assignOpportunity(input, options)
    return self:invokeOperation(input, {
        name = "AssignOpportunity",
        input_schema = types.AssignOpportunityInput,
        output_schema = types.AssignOpportunityOutput,
        http_method = "POST",
        http_path = "/AssignOpportunity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateOpportunity(input, options)
    return self:invokeOperation(input, {
        name = "AssociateOpportunity",
        input_schema = types.AssociateOpportunityInput,
        output_schema = types.AssociateOpportunityOutput,
        http_method = "POST",
        http_path = "/AssociateOpportunity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEngagement(input, options)
    return self:invokeOperation(input, {
        name = "CreateEngagement",
        input_schema = types.CreateEngagementInput,
        output_schema = types.CreateEngagementOutput,
        http_method = "POST",
        http_path = "/CreateEngagement",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEngagementContext(input, options)
    return self:invokeOperation(input, {
        name = "CreateEngagementContext",
        input_schema = types.CreateEngagementContextInput,
        output_schema = types.CreateEngagementContextOutput,
        http_method = "POST",
        http_path = "/CreateEngagementContext",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEngagementInvitation(input, options)
    return self:invokeOperation(input, {
        name = "CreateEngagementInvitation",
        input_schema = types.CreateEngagementInvitationInput,
        output_schema = types.CreateEngagementInvitationOutput,
        http_method = "POST",
        http_path = "/CreateEngagementInvitation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOpportunity(input, options)
    return self:invokeOperation(input, {
        name = "CreateOpportunity",
        input_schema = types.CreateOpportunityInput,
        output_schema = types.CreateOpportunityOutput,
        http_method = "POST",
        http_path = "/CreateOpportunity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourceSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceSnapshot",
        input_schema = types.CreateResourceSnapshotInput,
        output_schema = types.CreateResourceSnapshotOutput,
        http_method = "POST",
        http_path = "/CreateResourceSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourceSnapshotJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceSnapshotJob",
        input_schema = types.CreateResourceSnapshotJobInput,
        output_schema = types.CreateResourceSnapshotJobOutput,
        http_method = "POST",
        http_path = "/CreateResourceSnapshotJob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourceSnapshotJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceSnapshotJob",
        input_schema = types.DeleteResourceSnapshotJobInput,
        output_schema = types.DeleteResourceSnapshotJobOutput,
        http_method = "POST",
        http_path = "/DeleteResourceSnapshotJob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateOpportunity(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateOpportunity",
        input_schema = types.DisassociateOpportunityInput,
        output_schema = types.DisassociateOpportunityOutput,
        http_method = "POST",
        http_path = "/DisassociateOpportunity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAwsOpportunitySummary(input, options)
    return self:invokeOperation(input, {
        name = "GetAwsOpportunitySummary",
        input_schema = types.GetAwsOpportunitySummaryInput,
        output_schema = types.GetAwsOpportunitySummaryOutput,
        http_method = "POST",
        http_path = "/GetAwsOpportunitySummary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEngagement(input, options)
    return self:invokeOperation(input, {
        name = "GetEngagement",
        input_schema = types.GetEngagementInput,
        output_schema = types.GetEngagementOutput,
        http_method = "POST",
        http_path = "/GetEngagement",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEngagementInvitation(input, options)
    return self:invokeOperation(input, {
        name = "GetEngagementInvitation",
        input_schema = types.GetEngagementInvitationInput,
        output_schema = types.GetEngagementInvitationOutput,
        http_method = "POST",
        http_path = "/GetEngagementInvitation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOpportunity(input, options)
    return self:invokeOperation(input, {
        name = "GetOpportunity",
        input_schema = types.GetOpportunityInput,
        output_schema = types.GetOpportunityOutput,
        http_method = "POST",
        http_path = "/GetOpportunity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceSnapshot",
        input_schema = types.GetResourceSnapshotInput,
        output_schema = types.GetResourceSnapshotOutput,
        http_method = "POST",
        http_path = "/GetResourceSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceSnapshotJob(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceSnapshotJob",
        input_schema = types.GetResourceSnapshotJobInput,
        output_schema = types.GetResourceSnapshotJobOutput,
        http_method = "POST",
        http_path = "/GetResourceSnapshotJob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSellingSystemSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetSellingSystemSettings",
        input_schema = types.GetSellingSystemSettingsInput,
        output_schema = types.GetSellingSystemSettingsOutput,
        http_method = "POST",
        http_path = "/GetSellingSystemSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEngagementByAcceptingInvitationTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListEngagementByAcceptingInvitationTasks",
        input_schema = types.ListEngagementByAcceptingInvitationTasksInput,
        output_schema = types.ListEngagementByAcceptingInvitationTasksOutput,
        http_method = "POST",
        http_path = "/ListEngagementByAcceptingInvitationTasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEngagementFromOpportunityTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListEngagementFromOpportunityTasks",
        input_schema = types.ListEngagementFromOpportunityTasksInput,
        output_schema = types.ListEngagementFromOpportunityTasksOutput,
        http_method = "POST",
        http_path = "/ListEngagementFromOpportunityTasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEngagementInvitations(input, options)
    return self:invokeOperation(input, {
        name = "ListEngagementInvitations",
        input_schema = types.ListEngagementInvitationsInput,
        output_schema = types.ListEngagementInvitationsOutput,
        http_method = "POST",
        http_path = "/ListEngagementInvitations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEngagementMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListEngagementMembers",
        input_schema = types.ListEngagementMembersInput,
        output_schema = types.ListEngagementMembersOutput,
        http_method = "POST",
        http_path = "/ListEngagementMembers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEngagementResourceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListEngagementResourceAssociations",
        input_schema = types.ListEngagementResourceAssociationsInput,
        output_schema = types.ListEngagementResourceAssociationsOutput,
        http_method = "POST",
        http_path = "/ListEngagementResourceAssociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEngagements(input, options)
    return self:invokeOperation(input, {
        name = "ListEngagements",
        input_schema = types.ListEngagementsInput,
        output_schema = types.ListEngagementsOutput,
        http_method = "POST",
        http_path = "/ListEngagements",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOpportunities(input, options)
    return self:invokeOperation(input, {
        name = "ListOpportunities",
        input_schema = types.ListOpportunitiesInput,
        output_schema = types.ListOpportunitiesOutput,
        http_method = "POST",
        http_path = "/ListOpportunities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOpportunityFromEngagementTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListOpportunityFromEngagementTasks",
        input_schema = types.ListOpportunityFromEngagementTasksInput,
        output_schema = types.ListOpportunityFromEngagementTasksOutput,
        http_method = "POST",
        http_path = "/ListOpportunityFromEngagementTasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceSnapshotJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceSnapshotJobs",
        input_schema = types.ListResourceSnapshotJobsInput,
        output_schema = types.ListResourceSnapshotJobsOutput,
        http_method = "POST",
        http_path = "/ListResourceSnapshotJobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceSnapshots",
        input_schema = types.ListResourceSnapshotsInput,
        output_schema = types.ListResourceSnapshotsOutput,
        http_method = "POST",
        http_path = "/ListResourceSnapshots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSolutions(input, options)
    return self:invokeOperation(input, {
        name = "ListSolutions",
        input_schema = types.ListSolutionsInput,
        output_schema = types.ListSolutionsOutput,
        http_method = "POST",
        http_path = "/ListSolutions",
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
        http_path = "/ListTagsForResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSellingSystemSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutSellingSystemSettings",
        input_schema = types.PutSellingSystemSettingsInput,
        output_schema = types.PutSellingSystemSettingsOutput,
        http_method = "POST",
        http_path = "/PutSellingSystemSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectEngagementInvitation(input, options)
    return self:invokeOperation(input, {
        name = "RejectEngagementInvitation",
        input_schema = types.RejectEngagementInvitationInput,
        output_schema = types.RejectEngagementInvitationOutput,
        http_method = "POST",
        http_path = "/RejectEngagementInvitation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startEngagementByAcceptingInvitationTask(input, options)
    return self:invokeOperation(input, {
        name = "StartEngagementByAcceptingInvitationTask",
        input_schema = types.StartEngagementByAcceptingInvitationTaskInput,
        output_schema = types.StartEngagementByAcceptingInvitationTaskOutput,
        http_method = "POST",
        http_path = "/StartEngagementByAcceptingInvitationTask",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startEngagementFromOpportunityTask(input, options)
    return self:invokeOperation(input, {
        name = "StartEngagementFromOpportunityTask",
        input_schema = types.StartEngagementFromOpportunityTaskInput,
        output_schema = types.StartEngagementFromOpportunityTaskOutput,
        http_method = "POST",
        http_path = "/StartEngagementFromOpportunityTask",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startOpportunityFromEngagementTask(input, options)
    return self:invokeOperation(input, {
        name = "StartOpportunityFromEngagementTask",
        input_schema = types.StartOpportunityFromEngagementTaskInput,
        output_schema = types.StartOpportunityFromEngagementTaskOutput,
        http_method = "POST",
        http_path = "/StartOpportunityFromEngagementTask",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startResourceSnapshotJob(input, options)
    return self:invokeOperation(input, {
        name = "StartResourceSnapshotJob",
        input_schema = types.StartResourceSnapshotJobInput,
        output_schema = types.StartResourceSnapshotJobOutput,
        http_method = "POST",
        http_path = "/StartResourceSnapshotJob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopResourceSnapshotJob(input, options)
    return self:invokeOperation(input, {
        name = "StopResourceSnapshotJob",
        input_schema = types.StopResourceSnapshotJobInput,
        output_schema = types.StopResourceSnapshotJobOutput,
        http_method = "POST",
        http_path = "/StopResourceSnapshotJob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitOpportunity(input, options)
    return self:invokeOperation(input, {
        name = "SubmitOpportunity",
        input_schema = types.SubmitOpportunityInput,
        output_schema = types.SubmitOpportunityOutput,
        http_method = "POST",
        http_path = "/SubmitOpportunity",
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
        http_path = "/TagResource",
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
        http_path = "/UntagResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEngagementContext(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEngagementContext",
        input_schema = types.UpdateEngagementContextInput,
        output_schema = types.UpdateEngagementContextOutput,
        http_method = "POST",
        http_path = "/UpdateEngagementContext",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOpportunity(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOpportunity",
        input_schema = types.UpdateOpportunityInput,
        output_schema = types.UpdateOpportunityOutput,
        http_method = "POST",
        http_path = "/UpdateOpportunity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
