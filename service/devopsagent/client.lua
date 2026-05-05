local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("devopsagent.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("devopsagent.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DevOpsAgent"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aidevops", signing_region = cfg.region } }
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

function Client:associateService(input, options)
    return self:invokeOperation(input, {
        name = "AssociateService",
        input_schema = schemas.AssociateServiceInput,
        output_schema = schemas.AssociateServiceOutput,
        http_method = "POST",
        http_path = "/v1/agentspaces/{agentSpaceId}/associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAgentSpace(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgentSpace",
        input_schema = schemas.CreateAgentSpaceInput,
        output_schema = schemas.CreateAgentSpaceOutput,
        http_method = "POST",
        http_path = "/v1/agentspaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBacklogTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateBacklogTask",
        input_schema = schemas.CreateBacklogTaskInput,
        output_schema = schemas.CreateBacklogTaskOutput,
        http_method = "POST",
        http_path = "/backlog/agent-space/{agentSpaceId}/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChat(input, options)
    return self:invokeOperation(input, {
        name = "CreateChat",
        input_schema = schemas.CreateChatInput,
        output_schema = schemas.CreateChatOutput,
        http_method = "POST",
        http_path = "/agents/agent-space/{agentSpaceId}/chat/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPrivateConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreatePrivateConnection",
        input_schema = schemas.CreatePrivateConnectionInput,
        output_schema = schemas.CreatePrivateConnectionOutput,
        http_method = "POST",
        http_path = "/v1/private-connections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAgentSpace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgentSpace",
        input_schema = schemas.DeleteAgentSpaceInput,
        output_schema = schemas.DeleteAgentSpaceOutput,
        http_method = "DELETE",
        http_path = "/v1/agentspaces/{agentSpaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePrivateConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeletePrivateConnection",
        input_schema = schemas.DeletePrivateConnectionInput,
        output_schema = schemas.DeletePrivateConnectionOutput,
        http_method = "DELETE",
        http_path = "/v1/private-connections/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterService(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterService",
        input_schema = schemas.DeregisterServiceInput,
        output_schema = schemas.DeregisterServiceOutput,
        http_method = "DELETE",
        http_path = "/v1/services/{serviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePrivateConnection(input, options)
    return self:invokeOperation(input, {
        name = "DescribePrivateConnection",
        input_schema = schemas.DescribePrivateConnectionInput,
        output_schema = schemas.DescribePrivateConnectionOutput,
        http_method = "GET",
        http_path = "/v1/private-connections/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableOperatorApp(input, options)
    return self:invokeOperation(input, {
        name = "DisableOperatorApp",
        input_schema = schemas.DisableOperatorAppInput,
        output_schema = schemas.DisableOperatorAppOutput,
        http_method = "DELETE",
        http_path = "/v1/agentspaces/{agentSpaceId}/operator",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateService(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateService",
        input_schema = schemas.DisassociateServiceInput,
        output_schema = schemas.DisassociateServiceOutput,
        http_method = "DELETE",
        http_path = "/v1/agentspaces/{agentSpaceId}/associations/{associationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableOperatorApp(input, options)
    return self:invokeOperation(input, {
        name = "EnableOperatorApp",
        input_schema = schemas.EnableOperatorAppInput,
        output_schema = schemas.EnableOperatorAppOutput,
        http_method = "POST",
        http_path = "/v1/agentspaces/{agentSpaceId}/operator",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountUsage",
        input_schema = schemas.GetAccountUsageInput,
        output_schema = schemas.GetAccountUsageOutput,
        http_method = "GET",
        http_path = "/usage/account",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAgentSpace(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentSpace",
        input_schema = schemas.GetAgentSpaceInput,
        output_schema = schemas.GetAgentSpaceOutput,
        http_method = "GET",
        http_path = "/v1/agentspaces/{agentSpaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetAssociation",
        input_schema = schemas.GetAssociationInput,
        output_schema = schemas.GetAssociationOutput,
        http_method = "GET",
        http_path = "/v1/agentspaces/{agentSpaceId}/associations/{associationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBacklogTask(input, options)
    return self:invokeOperation(input, {
        name = "GetBacklogTask",
        input_schema = schemas.GetBacklogTaskInput,
        output_schema = schemas.GetBacklogTaskOutput,
        http_method = "GET",
        http_path = "/backlog/agent-space/{agentSpaceId}/tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOperatorApp(input, options)
    return self:invokeOperation(input, {
        name = "GetOperatorApp",
        input_schema = schemas.GetOperatorAppInput,
        output_schema = schemas.GetOperatorAppOutput,
        http_method = "GET",
        http_path = "/v2/agentspaces/{agentSpaceId}/operator",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommendation",
        input_schema = schemas.GetRecommendationInput,
        output_schema = schemas.GetRecommendationOutput,
        http_method = "GET",
        http_path = "/backlog/agent-space/{agentSpaceId}/recommendations/{recommendationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getService(input, options)
    return self:invokeOperation(input, {
        name = "GetService",
        input_schema = schemas.GetServiceInput,
        output_schema = schemas.GetServiceOutput,
        http_method = "GET",
        http_path = "/v1/services/{serviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAgentSpaces(input, options)
    return self:invokeOperation(input, {
        name = "ListAgentSpaces",
        input_schema = schemas.ListAgentSpacesInput,
        output_schema = schemas.ListAgentSpacesOutput,
        http_method = "POST",
        http_path = "/v1/agentspaces/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociations",
        input_schema = schemas.ListAssociationsInput,
        output_schema = schemas.ListAssociationsOutput,
        http_method = "POST",
        http_path = "/v1/agentspaces/{agentSpaceId}/associations/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBacklogTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListBacklogTasks",
        input_schema = schemas.ListBacklogTasksInput,
        output_schema = schemas.ListBacklogTasksOutput,
        http_method = "POST",
        http_path = "/backlog/agent-space/{agentSpaceId}/tasks/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChats(input, options)
    return self:invokeOperation(input, {
        name = "ListChats",
        input_schema = schemas.ListChatsInput,
        output_schema = schemas.ListChatsOutput,
        http_method = "GET",
        http_path = "/agents/agent-space/{agentSpaceId}/chat/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListExecutions",
        input_schema = schemas.ListExecutionsInput,
        output_schema = schemas.ListExecutionsOutput,
        http_method = "POST",
        http_path = "/journal/agent-space/{agentSpaceId}/executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGoals(input, options)
    return self:invokeOperation(input, {
        name = "ListGoals",
        input_schema = schemas.ListGoalsInput,
        output_schema = schemas.ListGoalsOutput,
        http_method = "POST",
        http_path = "/backlog/agent-space/{agentSpaceId}/goals/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJournalRecords(input, options)
    return self:invokeOperation(input, {
        name = "ListJournalRecords",
        input_schema = schemas.ListJournalRecordsInput,
        output_schema = schemas.ListJournalRecordsOutput,
        http_method = "POST",
        http_path = "/journal/agent-space/{agentSpaceId}/journalRecords",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPendingMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListPendingMessages",
        input_schema = schemas.ListPendingMessagesInput,
        output_schema = schemas.ListPendingMessagesOutput,
        http_method = "POST",
        http_path = "/agents/agent-space/{agentSpaceId}/pendingMessages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrivateConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListPrivateConnections",
        input_schema = schemas.ListPrivateConnectionsInput,
        output_schema = schemas.ListPrivateConnectionsOutput,
        http_method = "GET",
        http_path = "/v1/private-connections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendations",
        input_schema = schemas.ListRecommendationsInput,
        output_schema = schemas.ListRecommendationsOutput,
        http_method = "POST",
        http_path = "/backlog/agent-space/{agentSpaceId}/recommendations/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = schemas.ListServicesInput,
        output_schema = schemas.ListServicesOutput,
        http_method = "POST",
        http_path = "/v1/services/list",
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
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWebhooks(input, options)
    return self:invokeOperation(input, {
        name = "ListWebhooks",
        input_schema = schemas.ListWebhooksInput,
        output_schema = schemas.ListWebhooksOutput,
        http_method = "POST",
        http_path = "/v1/agentspaces/{agentSpaceId}/associations/{associationId}/webhooks/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerService(input, options)
    return self:invokeOperation(input, {
        name = "RegisterService",
        input_schema = schemas.RegisterServiceInput,
        output_schema = schemas.RegisterServiceOutput,
        http_method = "POST",
        http_path = "/v1/register/{service}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendMessage",
        input_schema = schemas.SendMessageInput,
        output_schema = schemas.SendMessageOutput,
        http_method = "POST",
        http_path = "/agents/agent-space/{agentSpaceId}/chat/sendMessage",
        event_stream = schemas.SendMessageEvents,
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
        http_path = "/tags/{resourceArn}",
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
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAgentSpace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgentSpace",
        input_schema = schemas.UpdateAgentSpaceInput,
        output_schema = schemas.UpdateAgentSpaceOutput,
        http_method = "PATCH",
        http_path = "/v1/agentspaces/{agentSpaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssociation",
        input_schema = schemas.UpdateAssociationInput,
        output_schema = schemas.UpdateAssociationOutput,
        http_method = "PATCH",
        http_path = "/v1/agentspaces/{agentSpaceId}/associations/{associationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBacklogTask(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBacklogTask",
        input_schema = schemas.UpdateBacklogTaskInput,
        output_schema = schemas.UpdateBacklogTaskOutput,
        http_method = "PATCH",
        http_path = "/backlog/agent-space/{agentSpaceId}/tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGoal(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGoal",
        input_schema = schemas.UpdateGoalInput,
        output_schema = schemas.UpdateGoalOutput,
        http_method = "PATCH",
        http_path = "/backlog/agent-space/{agentSpaceId}/goals/{goalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOperatorAppIdpConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOperatorAppIdpConfig",
        input_schema = schemas.UpdateOperatorAppIdpConfigInput,
        output_schema = schemas.UpdateOperatorAppIdpConfigOutput,
        http_method = "PATCH",
        http_path = "/v1/agentspaces/{agentSpaceId}/operator/idp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePrivateConnectionCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePrivateConnectionCertificate",
        input_schema = schemas.UpdatePrivateConnectionCertificateInput,
        output_schema = schemas.UpdatePrivateConnectionCertificateOutput,
        http_method = "POST",
        http_path = "/v1/private-connections/{name}/certificate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecommendation",
        input_schema = schemas.UpdateRecommendationInput,
        output_schema = schemas.UpdateRecommendationOutput,
        http_method = "PATCH",
        http_path = "/backlog/agent-space/{agentSpaceId}/recommendations/{recommendationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validateAwsAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ValidateAwsAssociations",
        input_schema = schemas.ValidateAwsAssociationsInput,
        output_schema = schemas.ValidateAwsAssociationsOutput,
        http_method = "POST",
        http_path = "/v1/agentspaces/{agentSpaceId}/associations/validate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
