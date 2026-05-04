local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cleanrooms.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("cleanrooms.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBastionControlPlaneServiceLambda"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cleanrooms", signing_region = cfg.region } }
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

function Client:batchGetCollaborationAnalysisTemplate(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCollaborationAnalysisTemplate",
        input_schema = types.BatchGetCollaborationAnalysisTemplateInput,
        output_schema = types.BatchGetCollaborationAnalysisTemplateOutput,
        http_method = "POST",
        http_path = "/collaborations/{collaborationIdentifier}/batch-analysistemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetSchema(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetSchema",
        input_schema = types.BatchGetSchemaInput,
        output_schema = types.BatchGetSchemaOutput,
        http_method = "POST",
        http_path = "/collaborations/{collaborationIdentifier}/batch-schema",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetSchemaAnalysisRule(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetSchemaAnalysisRule",
        input_schema = types.BatchGetSchemaAnalysisRuleInput,
        output_schema = types.BatchGetSchemaAnalysisRuleOutput,
        http_method = "POST",
        http_path = "/collaborations/{collaborationIdentifier}/batch-schema-analysis-rule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAnalysisTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnalysisTemplate",
        input_schema = types.CreateAnalysisTemplateInput,
        output_schema = types.CreateAnalysisTemplateOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/analysistemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCollaboration(input, options)
    return self:invokeOperation(input, {
        name = "CreateCollaboration",
        input_schema = types.CreateCollaborationInput,
        output_schema = types.CreateCollaborationOutput,
        http_method = "POST",
        http_path = "/collaborations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCollaborationChangeRequest(input, options)
    return self:invokeOperation(input, {
        name = "CreateCollaborationChangeRequest",
        input_schema = types.CreateCollaborationChangeRequestInput,
        output_schema = types.CreateCollaborationChangeRequestOutput,
        http_method = "POST",
        http_path = "/collaborations/{collaborationIdentifier}/changeRequests",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfiguredAudienceModelAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguredAudienceModelAssociation",
        input_schema = types.CreateConfiguredAudienceModelAssociationInput,
        output_schema = types.CreateConfiguredAudienceModelAssociationOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfiguredTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguredTable",
        input_schema = types.CreateConfiguredTableInput,
        output_schema = types.CreateConfiguredTableOutput,
        http_method = "POST",
        http_path = "/configuredTables",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfiguredTableAnalysisRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguredTableAnalysisRule",
        input_schema = types.CreateConfiguredTableAnalysisRuleInput,
        output_schema = types.CreateConfiguredTableAnalysisRuleOutput,
        http_method = "POST",
        http_path = "/configuredTables/{configuredTableIdentifier}/analysisRule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfiguredTableAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguredTableAssociation",
        input_schema = types.CreateConfiguredTableAssociationInput,
        output_schema = types.CreateConfiguredTableAssociationOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/configuredTableAssociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfiguredTableAssociationAnalysisRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfiguredTableAssociationAnalysisRule",
        input_schema = types.CreateConfiguredTableAssociationAnalysisRuleInput,
        output_schema = types.CreateConfiguredTableAssociationAnalysisRuleOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIdMappingTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateIdMappingTable",
        input_schema = types.CreateIdMappingTableInput,
        output_schema = types.CreateIdMappingTableOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/idmappingtables",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIdNamespaceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateIdNamespaceAssociation",
        input_schema = types.CreateIdNamespaceAssociationInput,
        output_schema = types.CreateIdNamespaceAssociationOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/idnamespaceassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateMembership",
        input_schema = types.CreateMembershipInput,
        output_schema = types.CreateMembershipOutput,
        http_method = "POST",
        http_path = "/memberships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPrivacyBudgetTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreatePrivacyBudgetTemplate",
        input_schema = types.CreatePrivacyBudgetTemplateInput,
        output_schema = types.CreatePrivacyBudgetTemplateOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/privacybudgettemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAnalysisTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnalysisTemplate",
        input_schema = types.DeleteAnalysisTemplateInput,
        output_schema = types.DeleteAnalysisTemplateOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCollaboration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCollaboration",
        input_schema = types.DeleteCollaborationInput,
        output_schema = types.DeleteCollaborationOutput,
        http_method = "DELETE",
        http_path = "/collaborations/{collaborationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfiguredAudienceModelAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredAudienceModelAssociation",
        input_schema = types.DeleteConfiguredAudienceModelAssociationInput,
        output_schema = types.DeleteConfiguredAudienceModelAssociationOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfiguredTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredTable",
        input_schema = types.DeleteConfiguredTableInput,
        output_schema = types.DeleteConfiguredTableOutput,
        http_method = "DELETE",
        http_path = "/configuredTables/{configuredTableIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfiguredTableAnalysisRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredTableAnalysisRule",
        input_schema = types.DeleteConfiguredTableAnalysisRuleInput,
        output_schema = types.DeleteConfiguredTableAnalysisRuleOutput,
        http_method = "DELETE",
        http_path = "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfiguredTableAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredTableAssociation",
        input_schema = types.DeleteConfiguredTableAssociationInput,
        output_schema = types.DeleteConfiguredTableAssociationOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfiguredTableAssociationAnalysisRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfiguredTableAssociationAnalysisRule",
        input_schema = types.DeleteConfiguredTableAssociationAnalysisRuleInput,
        output_schema = types.DeleteConfiguredTableAssociationAnalysisRuleOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdMappingTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdMappingTable",
        input_schema = types.DeleteIdMappingTableInput,
        output_schema = types.DeleteIdMappingTableOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdNamespaceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdNamespaceAssociation",
        input_schema = types.DeleteIdNamespaceAssociationInput,
        output_schema = types.DeleteIdNamespaceAssociationOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMember(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMember",
        input_schema = types.DeleteMemberInput,
        output_schema = types.DeleteMemberOutput,
        http_method = "DELETE",
        http_path = "/collaborations/{collaborationIdentifier}/member/{accountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMembership(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMembership",
        input_schema = types.DeleteMembershipInput,
        output_schema = types.DeleteMembershipOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePrivacyBudgetTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeletePrivacyBudgetTemplate",
        input_schema = types.DeletePrivacyBudgetTemplateInput,
        output_schema = types.DeletePrivacyBudgetTemplateOutput,
        http_method = "DELETE",
        http_path = "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAnalysisTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetAnalysisTemplate",
        input_schema = types.GetAnalysisTemplateInput,
        output_schema = types.GetAnalysisTemplateOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCollaboration(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaboration",
        input_schema = types.GetCollaborationInput,
        output_schema = types.GetCollaborationOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCollaborationAnalysisTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaborationAnalysisTemplate",
        input_schema = types.GetCollaborationAnalysisTemplateInput,
        output_schema = types.GetCollaborationAnalysisTemplateOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/analysistemplates/{analysisTemplateArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCollaborationChangeRequest(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaborationChangeRequest",
        input_schema = types.GetCollaborationChangeRequestInput,
        output_schema = types.GetCollaborationChangeRequestOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/changeRequests/{changeRequestIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCollaborationConfiguredAudienceModelAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaborationConfiguredAudienceModelAssociation",
        input_schema = types.GetCollaborationConfiguredAudienceModelAssociationInput,
        output_schema = types.GetCollaborationConfiguredAudienceModelAssociationOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCollaborationIdNamespaceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaborationIdNamespaceAssociation",
        input_schema = types.GetCollaborationIdNamespaceAssociationInput,
        output_schema = types.GetCollaborationIdNamespaceAssociationOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCollaborationPrivacyBudgetTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetCollaborationPrivacyBudgetTemplate",
        input_schema = types.GetCollaborationPrivacyBudgetTemplateInput,
        output_schema = types.GetCollaborationPrivacyBudgetTemplateOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfiguredAudienceModelAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredAudienceModelAssociation",
        input_schema = types.GetConfiguredAudienceModelAssociationInput,
        output_schema = types.GetConfiguredAudienceModelAssociationOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfiguredTable(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredTable",
        input_schema = types.GetConfiguredTableInput,
        output_schema = types.GetConfiguredTableOutput,
        http_method = "GET",
        http_path = "/configuredTables/{configuredTableIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfiguredTableAnalysisRule(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredTableAnalysisRule",
        input_schema = types.GetConfiguredTableAnalysisRuleInput,
        output_schema = types.GetConfiguredTableAnalysisRuleOutput,
        http_method = "GET",
        http_path = "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfiguredTableAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredTableAssociation",
        input_schema = types.GetConfiguredTableAssociationInput,
        output_schema = types.GetConfiguredTableAssociationOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfiguredTableAssociationAnalysisRule(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguredTableAssociationAnalysisRule",
        input_schema = types.GetConfiguredTableAssociationAnalysisRuleInput,
        output_schema = types.GetConfiguredTableAssociationAnalysisRuleOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdMappingTable(input, options)
    return self:invokeOperation(input, {
        name = "GetIdMappingTable",
        input_schema = types.GetIdMappingTableInput,
        output_schema = types.GetIdMappingTableOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdNamespaceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetIdNamespaceAssociation",
        input_schema = types.GetIdNamespaceAssociationInput,
        output_schema = types.GetIdNamespaceAssociationOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMembership(input, options)
    return self:invokeOperation(input, {
        name = "GetMembership",
        input_schema = types.GetMembershipInput,
        output_schema = types.GetMembershipOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPrivacyBudgetTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetPrivacyBudgetTemplate",
        input_schema = types.GetPrivacyBudgetTemplateInput,
        output_schema = types.GetPrivacyBudgetTemplateOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProtectedJob(input, options)
    return self:invokeOperation(input, {
        name = "GetProtectedJob",
        input_schema = types.GetProtectedJobInput,
        output_schema = types.GetProtectedJobOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProtectedQuery(input, options)
    return self:invokeOperation(input, {
        name = "GetProtectedQuery",
        input_schema = types.GetProtectedQueryInput,
        output_schema = types.GetProtectedQueryOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSchema(input, options)
    return self:invokeOperation(input, {
        name = "GetSchema",
        input_schema = types.GetSchemaInput,
        output_schema = types.GetSchemaOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/schemas/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSchemaAnalysisRule(input, options)
    return self:invokeOperation(input, {
        name = "GetSchemaAnalysisRule",
        input_schema = types.GetSchemaAnalysisRuleInput,
        output_schema = types.GetSchemaAnalysisRuleOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/schemas/{name}/analysisRule/{type}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnalysisTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListAnalysisTemplates",
        input_schema = types.ListAnalysisTemplatesInput,
        output_schema = types.ListAnalysisTemplatesOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/analysistemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborationAnalysisTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationAnalysisTemplates",
        input_schema = types.ListCollaborationAnalysisTemplatesInput,
        output_schema = types.ListCollaborationAnalysisTemplatesOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/analysistemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborationChangeRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationChangeRequests",
        input_schema = types.ListCollaborationChangeRequestsInput,
        output_schema = types.ListCollaborationChangeRequestsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/changeRequests",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborationConfiguredAudienceModelAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationConfiguredAudienceModelAssociations",
        input_schema = types.ListCollaborationConfiguredAudienceModelAssociationsInput,
        output_schema = types.ListCollaborationConfiguredAudienceModelAssociationsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/configuredaudiencemodelassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborationIdNamespaceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationIdNamespaceAssociations",
        input_schema = types.ListCollaborationIdNamespaceAssociationsInput,
        output_schema = types.ListCollaborationIdNamespaceAssociationsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/idnamespaceassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborationPrivacyBudgets(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationPrivacyBudgets",
        input_schema = types.ListCollaborationPrivacyBudgetsInput,
        output_schema = types.ListCollaborationPrivacyBudgetsOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/privacybudgets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborationPrivacyBudgetTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborationPrivacyBudgetTemplates",
        input_schema = types.ListCollaborationPrivacyBudgetTemplatesInput,
        output_schema = types.ListCollaborationPrivacyBudgetTemplatesOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/privacybudgettemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollaborations(input, options)
    return self:invokeOperation(input, {
        name = "ListCollaborations",
        input_schema = types.ListCollaborationsInput,
        output_schema = types.ListCollaborationsOutput,
        http_method = "GET",
        http_path = "/collaborations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfiguredAudienceModelAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfiguredAudienceModelAssociations",
        input_schema = types.ListConfiguredAudienceModelAssociationsInput,
        output_schema = types.ListConfiguredAudienceModelAssociationsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfiguredTableAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfiguredTableAssociations",
        input_schema = types.ListConfiguredTableAssociationsInput,
        output_schema = types.ListConfiguredTableAssociationsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/configuredTableAssociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfiguredTables(input, options)
    return self:invokeOperation(input, {
        name = "ListConfiguredTables",
        input_schema = types.ListConfiguredTablesInput,
        output_schema = types.ListConfiguredTablesOutput,
        http_method = "GET",
        http_path = "/configuredTables",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdMappingTables(input, options)
    return self:invokeOperation(input, {
        name = "ListIdMappingTables",
        input_schema = types.ListIdMappingTablesInput,
        output_schema = types.ListIdMappingTablesOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/idmappingtables",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdNamespaceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListIdNamespaceAssociations",
        input_schema = types.ListIdNamespaceAssociationsInput,
        output_schema = types.ListIdNamespaceAssociationsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/idnamespaceassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListMembers",
        input_schema = types.ListMembersInput,
        output_schema = types.ListMembersOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMemberships(input, options)
    return self:invokeOperation(input, {
        name = "ListMemberships",
        input_schema = types.ListMembershipsInput,
        output_schema = types.ListMembershipsOutput,
        http_method = "GET",
        http_path = "/memberships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrivacyBudgets(input, options)
    return self:invokeOperation(input, {
        name = "ListPrivacyBudgets",
        input_schema = types.ListPrivacyBudgetsInput,
        output_schema = types.ListPrivacyBudgetsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/privacybudgets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrivacyBudgetTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListPrivacyBudgetTemplates",
        input_schema = types.ListPrivacyBudgetTemplatesInput,
        output_schema = types.ListPrivacyBudgetTemplatesOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/privacybudgettemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProtectedJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListProtectedJobs",
        input_schema = types.ListProtectedJobsInput,
        output_schema = types.ListProtectedJobsOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/protectedJobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProtectedQueries(input, options)
    return self:invokeOperation(input, {
        name = "ListProtectedQueries",
        input_schema = types.ListProtectedQueriesInput,
        output_schema = types.ListProtectedQueriesOutput,
        http_method = "GET",
        http_path = "/memberships/{membershipIdentifier}/protectedQueries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSchemas(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemas",
        input_schema = types.ListSchemasInput,
        output_schema = types.ListSchemasOutput,
        http_method = "GET",
        http_path = "/collaborations/{collaborationIdentifier}/schemas",
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

function Client:populateIdMappingTable(input, options)
    return self:invokeOperation(input, {
        name = "PopulateIdMappingTable",
        input_schema = types.PopulateIdMappingTableInput,
        output_schema = types.PopulateIdMappingTableOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}/populate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:previewPrivacyImpact(input, options)
    return self:invokeOperation(input, {
        name = "PreviewPrivacyImpact",
        input_schema = types.PreviewPrivacyImpactInput,
        output_schema = types.PreviewPrivacyImpactOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/previewprivacyimpact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startProtectedJob(input, options)
    return self:invokeOperation(input, {
        name = "StartProtectedJob",
        input_schema = types.StartProtectedJobInput,
        output_schema = types.StartProtectedJobOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/protectedJobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startProtectedQuery(input, options)
    return self:invokeOperation(input, {
        name = "StartProtectedQuery",
        input_schema = types.StartProtectedQueryInput,
        output_schema = types.StartProtectedQueryOutput,
        http_method = "POST",
        http_path = "/memberships/{membershipIdentifier}/protectedQueries",
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

function Client:updateAnalysisTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnalysisTemplate",
        input_schema = types.UpdateAnalysisTemplateInput,
        output_schema = types.UpdateAnalysisTemplateOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCollaboration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCollaboration",
        input_schema = types.UpdateCollaborationInput,
        output_schema = types.UpdateCollaborationOutput,
        http_method = "PATCH",
        http_path = "/collaborations/{collaborationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCollaborationChangeRequest(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCollaborationChangeRequest",
        input_schema = types.UpdateCollaborationChangeRequestInput,
        output_schema = types.UpdateCollaborationChangeRequestOutput,
        http_method = "PATCH",
        http_path = "/collaborations/{collaborationIdentifier}/changeRequests/{changeRequestIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfiguredAudienceModelAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfiguredAudienceModelAssociation",
        input_schema = types.UpdateConfiguredAudienceModelAssociationInput,
        output_schema = types.UpdateConfiguredAudienceModelAssociationOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfiguredTable(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfiguredTable",
        input_schema = types.UpdateConfiguredTableInput,
        output_schema = types.UpdateConfiguredTableOutput,
        http_method = "PATCH",
        http_path = "/configuredTables/{configuredTableIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfiguredTableAnalysisRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfiguredTableAnalysisRule",
        input_schema = types.UpdateConfiguredTableAnalysisRuleInput,
        output_schema = types.UpdateConfiguredTableAnalysisRuleOutput,
        http_method = "PATCH",
        http_path = "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfiguredTableAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfiguredTableAssociation",
        input_schema = types.UpdateConfiguredTableAssociationInput,
        output_schema = types.UpdateConfiguredTableAssociationOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfiguredTableAssociationAnalysisRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfiguredTableAssociationAnalysisRule",
        input_schema = types.UpdateConfiguredTableAssociationAnalysisRuleInput,
        output_schema = types.UpdateConfiguredTableAssociationAnalysisRuleOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIdMappingTable(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdMappingTable",
        input_schema = types.UpdateIdMappingTableInput,
        output_schema = types.UpdateIdMappingTableOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIdNamespaceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdNamespaceAssociation",
        input_schema = types.UpdateIdNamespaceAssociationInput,
        output_schema = types.UpdateIdNamespaceAssociationOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMembership(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMembership",
        input_schema = types.UpdateMembershipInput,
        output_schema = types.UpdateMembershipOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePrivacyBudgetTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePrivacyBudgetTemplate",
        input_schema = types.UpdatePrivacyBudgetTemplateInput,
        output_schema = types.UpdatePrivacyBudgetTemplateOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProtectedJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProtectedJob",
        input_schema = types.UpdateProtectedJobInput,
        output_schema = types.UpdateProtectedJobOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProtectedQuery(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProtectedQuery",
        input_schema = types.UpdateProtectedQueryInput,
        output_schema = types.UpdateProtectedQueryOutput,
        http_method = "PATCH",
        http_path = "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
