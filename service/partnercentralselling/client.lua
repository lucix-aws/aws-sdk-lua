local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("partnercentralselling.endpoint_rules")
local schemas = require("partnercentralselling.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.AcceptEngagementInvitationInput,
        output_schema = schemas.AcceptEngagementInvitationOutput,
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
        input_schema = schemas.AssignOpportunityInput,
        output_schema = schemas.AssignOpportunityOutput,
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
        input_schema = schemas.AssociateOpportunityInput,
        output_schema = schemas.AssociateOpportunityOutput,
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
        input_schema = schemas.CreateEngagementInput,
        output_schema = schemas.CreateEngagementOutput,
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
        input_schema = schemas.CreateEngagementContextInput,
        output_schema = schemas.CreateEngagementContextOutput,
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
        input_schema = schemas.CreateEngagementInvitationInput,
        output_schema = schemas.CreateEngagementInvitationOutput,
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
        input_schema = schemas.CreateOpportunityInput,
        output_schema = schemas.CreateOpportunityOutput,
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
        input_schema = schemas.CreateResourceSnapshotInput,
        output_schema = schemas.CreateResourceSnapshotOutput,
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
        input_schema = schemas.CreateResourceSnapshotJobInput,
        output_schema = schemas.CreateResourceSnapshotJobOutput,
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
        input_schema = schemas.DeleteResourceSnapshotJobInput,
        output_schema = schemas.DeleteResourceSnapshotJobOutput,
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
        input_schema = schemas.DisassociateOpportunityInput,
        output_schema = schemas.DisassociateOpportunityOutput,
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
        input_schema = schemas.GetAwsOpportunitySummaryInput,
        output_schema = schemas.GetAwsOpportunitySummaryOutput,
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
        input_schema = schemas.GetEngagementInput,
        output_schema = schemas.GetEngagementOutput,
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
        input_schema = schemas.GetEngagementInvitationInput,
        output_schema = schemas.GetEngagementInvitationOutput,
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
        input_schema = schemas.GetOpportunityInput,
        output_schema = schemas.GetOpportunityOutput,
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
        input_schema = schemas.GetResourceSnapshotInput,
        output_schema = schemas.GetResourceSnapshotOutput,
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
        input_schema = schemas.GetResourceSnapshotJobInput,
        output_schema = schemas.GetResourceSnapshotJobOutput,
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
        input_schema = schemas.GetSellingSystemSettingsInput,
        output_schema = schemas.GetSellingSystemSettingsOutput,
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
        input_schema = schemas.ListEngagementByAcceptingInvitationTasksInput,
        output_schema = schemas.ListEngagementByAcceptingInvitationTasksOutput,
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
        input_schema = schemas.ListEngagementFromOpportunityTasksInput,
        output_schema = schemas.ListEngagementFromOpportunityTasksOutput,
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
        input_schema = schemas.ListEngagementInvitationsInput,
        output_schema = schemas.ListEngagementInvitationsOutput,
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
        input_schema = schemas.ListEngagementMembersInput,
        output_schema = schemas.ListEngagementMembersOutput,
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
        input_schema = schemas.ListEngagementResourceAssociationsInput,
        output_schema = schemas.ListEngagementResourceAssociationsOutput,
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
        input_schema = schemas.ListEngagementsInput,
        output_schema = schemas.ListEngagementsOutput,
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
        input_schema = schemas.ListOpportunitiesInput,
        output_schema = schemas.ListOpportunitiesOutput,
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
        input_schema = schemas.ListOpportunityFromEngagementTasksInput,
        output_schema = schemas.ListOpportunityFromEngagementTasksOutput,
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
        input_schema = schemas.ListResourceSnapshotJobsInput,
        output_schema = schemas.ListResourceSnapshotJobsOutput,
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
        input_schema = schemas.ListResourceSnapshotsInput,
        output_schema = schemas.ListResourceSnapshotsOutput,
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
        input_schema = schemas.ListSolutionsInput,
        output_schema = schemas.ListSolutionsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.PutSellingSystemSettingsInput,
        output_schema = schemas.PutSellingSystemSettingsOutput,
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
        input_schema = schemas.RejectEngagementInvitationInput,
        output_schema = schemas.RejectEngagementInvitationOutput,
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
        input_schema = schemas.StartEngagementByAcceptingInvitationTaskInput,
        output_schema = schemas.StartEngagementByAcceptingInvitationTaskOutput,
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
        input_schema = schemas.StartEngagementFromOpportunityTaskInput,
        output_schema = schemas.StartEngagementFromOpportunityTaskOutput,
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
        input_schema = schemas.StartOpportunityFromEngagementTaskInput,
        output_schema = schemas.StartOpportunityFromEngagementTaskOutput,
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
        input_schema = schemas.StartResourceSnapshotJobInput,
        output_schema = schemas.StartResourceSnapshotJobOutput,
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
        input_schema = schemas.StopResourceSnapshotJobInput,
        output_schema = schemas.StopResourceSnapshotJobOutput,
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
        input_schema = schemas.SubmitOpportunityInput,
        output_schema = schemas.SubmitOpportunityOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateEngagementContextInput,
        output_schema = schemas.UpdateEngagementContextOutput,
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
        input_schema = schemas.UpdateOpportunityInput,
        output_schema = schemas.UpdateOpportunityOutput,
        http_method = "POST",
        http_path = "/UpdateOpportunity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
