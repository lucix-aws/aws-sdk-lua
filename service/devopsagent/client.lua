local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("devopsagent.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("devopsagent.types")

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
        input_schema = types.AssociateServiceInput,
        output_schema = types.AssociateServiceOutput,
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
        input_schema = types.CreateAgentSpaceInput,
        output_schema = types.CreateAgentSpaceOutput,
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
        input_schema = types.CreateBacklogTaskInput,
        output_schema = types.CreateBacklogTaskOutput,
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
        input_schema = types.CreateChatInput,
        output_schema = types.CreateChatOutput,
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
        input_schema = types.CreatePrivateConnectionInput,
        output_schema = types.CreatePrivateConnectionOutput,
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
        input_schema = types.DeleteAgentSpaceInput,
        output_schema = types.DeleteAgentSpaceOutput,
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
        input_schema = types.DeletePrivateConnectionInput,
        output_schema = types.DeletePrivateConnectionOutput,
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
        input_schema = types.DeregisterServiceInput,
        output_schema = types.DeregisterServiceOutput,
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
        input_schema = types.DescribePrivateConnectionInput,
        output_schema = types.DescribePrivateConnectionOutput,
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
        input_schema = types.DisableOperatorAppInput,
        output_schema = types.DisableOperatorAppOutput,
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
        input_schema = types.DisassociateServiceInput,
        output_schema = types.DisassociateServiceOutput,
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
        input_schema = types.EnableOperatorAppInput,
        output_schema = types.EnableOperatorAppOutput,
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
        input_schema = types.GetAccountUsageInput,
        output_schema = types.GetAccountUsageOutput,
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
        input_schema = types.GetAgentSpaceInput,
        output_schema = types.GetAgentSpaceOutput,
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
        input_schema = types.GetAssociationInput,
        output_schema = types.GetAssociationOutput,
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
        input_schema = types.GetBacklogTaskInput,
        output_schema = types.GetBacklogTaskOutput,
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
        input_schema = types.GetOperatorAppInput,
        output_schema = types.GetOperatorAppOutput,
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
        input_schema = types.GetRecommendationInput,
        output_schema = types.GetRecommendationOutput,
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
        input_schema = types.GetServiceInput,
        output_schema = types.GetServiceOutput,
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
        input_schema = types.ListAgentSpacesInput,
        output_schema = types.ListAgentSpacesOutput,
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
        input_schema = types.ListAssociationsInput,
        output_schema = types.ListAssociationsOutput,
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
        input_schema = types.ListBacklogTasksInput,
        output_schema = types.ListBacklogTasksOutput,
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
        input_schema = types.ListChatsInput,
        output_schema = types.ListChatsOutput,
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
        input_schema = types.ListExecutionsInput,
        output_schema = types.ListExecutionsOutput,
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
        input_schema = types.ListGoalsInput,
        output_schema = types.ListGoalsOutput,
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
        input_schema = types.ListJournalRecordsInput,
        output_schema = types.ListJournalRecordsOutput,
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
        input_schema = types.ListPendingMessagesInput,
        output_schema = types.ListPendingMessagesOutput,
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
        input_schema = types.ListPrivateConnectionsInput,
        output_schema = types.ListPrivateConnectionsOutput,
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
        input_schema = types.ListRecommendationsInput,
        output_schema = types.ListRecommendationsOutput,
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
        input_schema = types.ListServicesInput,
        output_schema = types.ListServicesOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.ListWebhooksInput,
        output_schema = types.ListWebhooksOutput,
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
        input_schema = types.RegisterServiceInput,
        output_schema = types.RegisterServiceOutput,
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
        input_schema = types.SendMessageInput,
        output_schema = types.SendMessageOutput,
        http_method = "POST",
        http_path = "/agents/agent-space/{agentSpaceId}/chat/sendMessage",
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
        http_path = "/tags/{resourceArn}",
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
        input_schema = types.UpdateAgentSpaceInput,
        output_schema = types.UpdateAgentSpaceOutput,
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
        input_schema = types.UpdateAssociationInput,
        output_schema = types.UpdateAssociationOutput,
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
        input_schema = types.UpdateBacklogTaskInput,
        output_schema = types.UpdateBacklogTaskOutput,
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
        input_schema = types.UpdateGoalInput,
        output_schema = types.UpdateGoalOutput,
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
        input_schema = types.UpdateOperatorAppIdpConfigInput,
        output_schema = types.UpdateOperatorAppIdpConfigOutput,
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
        input_schema = types.UpdatePrivateConnectionCertificateInput,
        output_schema = types.UpdatePrivateConnectionCertificateOutput,
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
        input_schema = types.UpdateRecommendationInput,
        output_schema = types.UpdateRecommendationOutput,
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
        input_schema = types.ValidateAwsAssociationsInput,
        output_schema = types.ValidateAwsAssociationsOutput,
        http_method = "POST",
        http_path = "/v1/agentspaces/{agentSpaceId}/associations/validate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
