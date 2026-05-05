local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("quicksight.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("quicksight.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "QuickSight_20180401"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "quicksight", signing_region = cfg.region } }
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

function Client:batchCreateTopicReviewedAnswer(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateTopicReviewedAnswer",
        input_schema = schemas.BatchCreateTopicReviewedAnswerInput,
        output_schema = schemas.BatchCreateTopicReviewedAnswerOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}/batch-create-reviewed-answers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteTopicReviewedAnswer(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteTopicReviewedAnswer",
        input_schema = schemas.BatchDeleteTopicReviewedAnswerInput,
        output_schema = schemas.BatchDeleteTopicReviewedAnswerOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}/batch-delete-reviewed-answers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelIngestion(input, options)
    return self:invokeOperation(input, {
        name = "CancelIngestion",
        input_schema = schemas.CancelIngestionInput,
        output_schema = schemas.CancelIngestionOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccountCustomization(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccountCustomization",
        input_schema = schemas.CreateAccountCustomizationInput,
        output_schema = schemas.CreateAccountCustomizationOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/customizations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccountSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccountSubscription",
        input_schema = schemas.CreateAccountSubscriptionInput,
        output_schema = schemas.CreateAccountSubscriptionOutput,
        http_method = "POST",
        http_path = "/account/{AwsAccountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createActionConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateActionConnector",
        input_schema = schemas.CreateActionConnectorInput,
        output_schema = schemas.CreateActionConnectorOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/action-connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnalysis",
        input_schema = schemas.CreateAnalysisInput,
        output_schema = schemas.CreateAnalysisOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/analyses/{AnalysisId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBrand(input, options)
    return self:invokeOperation(input, {
        name = "CreateBrand",
        input_schema = schemas.CreateBrandInput,
        output_schema = schemas.CreateBrandOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/brands/{BrandId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomPermissions(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomPermissions",
        input_schema = schemas.CreateCustomPermissionsInput,
        output_schema = schemas.CreateCustomPermissionsOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/custom-permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDashboard(input, options)
    return self:invokeOperation(input, {
        name = "CreateDashboard",
        input_schema = schemas.CreateDashboardInput,
        output_schema = schemas.CreateDashboardOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSet",
        input_schema = schemas.CreateDataSetInput,
        output_schema = schemas.CreateDataSetOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/data-sets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSource",
        input_schema = schemas.CreateDataSourceInput,
        output_schema = schemas.CreateDataSourceOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/data-sources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFolder(input, options)
    return self:invokeOperation(input, {
        name = "CreateFolder",
        input_schema = schemas.CreateFolderInput,
        output_schema = schemas.CreateFolderOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/folders/{FolderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFolderMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateFolderMembership",
        input_schema = schemas.CreateFolderMembershipInput,
        output_schema = schemas.CreateFolderMembershipOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/folders/{FolderId}/members/{MemberType}/{MemberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroup",
        input_schema = schemas.CreateGroupInput,
        output_schema = schemas.CreateGroupOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGroupMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroupMembership",
        input_schema = schemas.CreateGroupMembershipInput,
        output_schema = schemas.CreateGroupMembershipOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIAMPolicyAssignment(input, options)
    return self:invokeOperation(input, {
        name = "CreateIAMPolicyAssignment",
        input_schema = schemas.CreateIAMPolicyAssignmentInput,
        output_schema = schemas.CreateIAMPolicyAssignmentOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIngestion(input, options)
    return self:invokeOperation(input, {
        name = "CreateIngestion",
        input_schema = schemas.CreateIngestionInput,
        output_schema = schemas.CreateIngestionOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreateNamespace",
        input_schema = schemas.CreateNamespaceInput,
        output_schema = schemas.CreateNamespaceOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRefreshSchedule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRefreshSchedule",
        input_schema = schemas.CreateRefreshScheduleInput,
        output_schema = schemas.CreateRefreshScheduleOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-schedules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRoleMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoleMembership",
        input_schema = schemas.CreateRoleMembershipInput,
        output_schema = schemas.CreateRoleMembershipOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/roles/{Role}/members/{MemberName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplate",
        input_schema = schemas.CreateTemplateInput,
        output_schema = schemas.CreateTemplateOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTemplateAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplateAlias",
        input_schema = schemas.CreateTemplateAliasInput,
        output_schema = schemas.CreateTemplateAliasOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTheme(input, options)
    return self:invokeOperation(input, {
        name = "CreateTheme",
        input_schema = schemas.CreateThemeInput,
        output_schema = schemas.CreateThemeOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createThemeAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateThemeAlias",
        input_schema = schemas.CreateThemeAliasInput,
        output_schema = schemas.CreateThemeAliasOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTopic(input, options)
    return self:invokeOperation(input, {
        name = "CreateTopic",
        input_schema = schemas.CreateTopicInput,
        output_schema = schemas.CreateTopicOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/topics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTopicRefreshSchedule(input, options)
    return self:invokeOperation(input, {
        name = "CreateTopicRefreshSchedule",
        input_schema = schemas.CreateTopicRefreshScheduleInput,
        output_schema = schemas.CreateTopicRefreshScheduleOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}/schedules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVPCConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateVPCConnection",
        input_schema = schemas.CreateVPCConnectionInput,
        output_schema = schemas.CreateVPCConnectionOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/vpc-connections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountCustomization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountCustomization",
        input_schema = schemas.DeleteAccountCustomizationInput,
        output_schema = schemas.DeleteAccountCustomizationOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/customizations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountCustomPermission(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountCustomPermission",
        input_schema = schemas.DeleteAccountCustomPermissionInput,
        output_schema = schemas.DeleteAccountCustomPermissionOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/custom-permission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountSubscription",
        input_schema = schemas.DeleteAccountSubscriptionInput,
        output_schema = schemas.DeleteAccountSubscriptionOutput,
        http_method = "DELETE",
        http_path = "/account/{AwsAccountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteActionConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteActionConnector",
        input_schema = schemas.DeleteActionConnectorInput,
        output_schema = schemas.DeleteActionConnectorOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/action-connectors/{ActionConnectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnalysis",
        input_schema = schemas.DeleteAnalysisInput,
        output_schema = schemas.DeleteAnalysisOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/analyses/{AnalysisId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBrand(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBrand",
        input_schema = schemas.DeleteBrandInput,
        output_schema = schemas.DeleteBrandOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/brands/{BrandId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBrandAssignment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBrandAssignment",
        input_schema = schemas.DeleteBrandAssignmentInput,
        output_schema = schemas.DeleteBrandAssignmentOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/brandassignments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomPermissions",
        input_schema = schemas.DeleteCustomPermissionsInput,
        output_schema = schemas.DeleteCustomPermissionsOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/custom-permissions/{CustomPermissionsName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDashboard(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDashboard",
        input_schema = schemas.DeleteDashboardInput,
        output_schema = schemas.DeleteDashboardOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSet",
        input_schema = schemas.DeleteDataSetInput,
        output_schema = schemas.DeleteDataSetOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataSetRefreshProperties(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSetRefreshProperties",
        input_schema = schemas.DeleteDataSetRefreshPropertiesInput,
        output_schema = schemas.DeleteDataSetRefreshPropertiesOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-properties",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSource",
        input_schema = schemas.DeleteDataSourceInput,
        output_schema = schemas.DeleteDataSourceOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/data-sources/{DataSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDefaultQBusinessApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDefaultQBusinessApplication",
        input_schema = schemas.DeleteDefaultQBusinessApplicationInput,
        output_schema = schemas.DeleteDefaultQBusinessApplicationOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/default-qbusiness-application",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFolder(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFolder",
        input_schema = schemas.DeleteFolderInput,
        output_schema = schemas.DeleteFolderOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/folders/{FolderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFolderMembership(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFolderMembership",
        input_schema = schemas.DeleteFolderMembershipInput,
        output_schema = schemas.DeleteFolderMembershipOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/folders/{FolderId}/members/{MemberType}/{MemberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = schemas.DeleteGroupInput,
        output_schema = schemas.DeleteGroupOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGroupMembership(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroupMembership",
        input_schema = schemas.DeleteGroupMembershipInput,
        output_schema = schemas.DeleteGroupMembershipOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIAMPolicyAssignment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIAMPolicyAssignment",
        input_schema = schemas.DeleteIAMPolicyAssignmentInput,
        output_schema = schemas.DeleteIAMPolicyAssignmentOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/namespace/{Namespace}/iam-policy-assignments/{AssignmentName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdentityPropagationConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentityPropagationConfig",
        input_schema = schemas.DeleteIdentityPropagationConfigInput,
        output_schema = schemas.DeleteIdentityPropagationConfigOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/identity-propagation-config/{Service}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNamespace",
        input_schema = schemas.DeleteNamespaceInput,
        output_schema = schemas.DeleteNamespaceOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRefreshSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRefreshSchedule",
        input_schema = schemas.DeleteRefreshScheduleInput,
        output_schema = schemas.DeleteRefreshScheduleOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-schedules/{ScheduleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRoleCustomPermission(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoleCustomPermission",
        input_schema = schemas.DeleteRoleCustomPermissionInput,
        output_schema = schemas.DeleteRoleCustomPermissionOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/roles/{Role}/custom-permission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRoleMembership(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoleMembership",
        input_schema = schemas.DeleteRoleMembershipInput,
        output_schema = schemas.DeleteRoleMembershipOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/roles/{Role}/members/{MemberName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplate",
        input_schema = schemas.DeleteTemplateInput,
        output_schema = schemas.DeleteTemplateOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTemplateAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplateAlias",
        input_schema = schemas.DeleteTemplateAliasInput,
        output_schema = schemas.DeleteTemplateAliasOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTheme(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTheme",
        input_schema = schemas.DeleteThemeInput,
        output_schema = schemas.DeleteThemeOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteThemeAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThemeAlias",
        input_schema = schemas.DeleteThemeAliasInput,
        output_schema = schemas.DeleteThemeAliasOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTopic(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTopic",
        input_schema = schemas.DeleteTopicInput,
        output_schema = schemas.DeleteTopicOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTopicRefreshSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTopicRefreshSchedule",
        input_schema = schemas.DeleteTopicRefreshScheduleInput,
        output_schema = schemas.DeleteTopicRefreshScheduleOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}/schedules/{DatasetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = schemas.DeleteUserInput,
        output_schema = schemas.DeleteUserOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUserByPrincipalId(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserByPrincipalId",
        input_schema = schemas.DeleteUserByPrincipalIdInput,
        output_schema = schemas.DeleteUserByPrincipalIdOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/user-principals/{PrincipalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUserCustomPermission(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserCustomPermission",
        input_schema = schemas.DeleteUserCustomPermissionInput,
        output_schema = schemas.DeleteUserCustomPermissionOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/custom-permission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVPCConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVPCConnection",
        input_schema = schemas.DeleteVPCConnectionInput,
        output_schema = schemas.DeleteVPCConnectionOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AwsAccountId}/vpc-connections/{VPCConnectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountCustomization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountCustomization",
        input_schema = schemas.DescribeAccountCustomizationInput,
        output_schema = schemas.DescribeAccountCustomizationOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/customizations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountCustomPermission(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountCustomPermission",
        input_schema = schemas.DescribeAccountCustomPermissionInput,
        output_schema = schemas.DescribeAccountCustomPermissionOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/custom-permission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountSettings",
        input_schema = schemas.DescribeAccountSettingsInput,
        output_schema = schemas.DescribeAccountSettingsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountSubscription",
        input_schema = schemas.DescribeAccountSubscriptionInput,
        output_schema = schemas.DescribeAccountSubscriptionOutput,
        http_method = "GET",
        http_path = "/account/{AwsAccountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeActionConnector(input, options)
    return self:invokeOperation(input, {
        name = "DescribeActionConnector",
        input_schema = schemas.DescribeActionConnectorInput,
        output_schema = schemas.DescribeActionConnectorOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/action-connectors/{ActionConnectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeActionConnectorPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeActionConnectorPermissions",
        input_schema = schemas.DescribeActionConnectorPermissionsInput,
        output_schema = schemas.DescribeActionConnectorPermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/action-connectors/{ActionConnectorId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAnalysis",
        input_schema = schemas.DescribeAnalysisInput,
        output_schema = schemas.DescribeAnalysisOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/analyses/{AnalysisId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAnalysisDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAnalysisDefinition",
        input_schema = schemas.DescribeAnalysisDefinitionInput,
        output_schema = schemas.DescribeAnalysisDefinitionOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/analyses/{AnalysisId}/definition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAnalysisPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAnalysisPermissions",
        input_schema = schemas.DescribeAnalysisPermissionsInput,
        output_schema = schemas.DescribeAnalysisPermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/analyses/{AnalysisId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssetBundleExportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetBundleExportJob",
        input_schema = schemas.DescribeAssetBundleExportJobInput,
        output_schema = schemas.DescribeAssetBundleExportJobOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/asset-bundle-export-jobs/{AssetBundleExportJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssetBundleImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetBundleImportJob",
        input_schema = schemas.DescribeAssetBundleImportJobInput,
        output_schema = schemas.DescribeAssetBundleImportJobOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/asset-bundle-import-jobs/{AssetBundleImportJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAutomationJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutomationJob",
        input_schema = schemas.DescribeAutomationJobInput,
        output_schema = schemas.DescribeAutomationJobOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/automation-groups/{AutomationGroupId}/automations/{AutomationId}/jobs/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBrand(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBrand",
        input_schema = schemas.DescribeBrandInput,
        output_schema = schemas.DescribeBrandOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/brands/{BrandId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBrandAssignment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBrandAssignment",
        input_schema = schemas.DescribeBrandAssignmentInput,
        output_schema = schemas.DescribeBrandAssignmentOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/brandassignments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBrandPublishedVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBrandPublishedVersion",
        input_schema = schemas.DescribeBrandPublishedVersionInput,
        output_schema = schemas.DescribeBrandPublishedVersionOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/brands/{BrandId}/publishedversion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomPermissions",
        input_schema = schemas.DescribeCustomPermissionsInput,
        output_schema = schemas.DescribeCustomPermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/custom-permissions/{CustomPermissionsName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDashboard(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDashboard",
        input_schema = schemas.DescribeDashboardInput,
        output_schema = schemas.DescribeDashboardOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDashboardDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDashboardDefinition",
        input_schema = schemas.DescribeDashboardDefinitionInput,
        output_schema = schemas.DescribeDashboardDefinitionOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/definition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDashboardPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDashboardPermissions",
        input_schema = schemas.DescribeDashboardPermissionsInput,
        output_schema = schemas.DescribeDashboardPermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDashboardSnapshotJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDashboardSnapshotJob",
        input_schema = schemas.DescribeDashboardSnapshotJobInput,
        output_schema = schemas.DescribeDashboardSnapshotJobOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/snapshot-jobs/{SnapshotJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDashboardSnapshotJobResult(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDashboardSnapshotJobResult",
        input_schema = schemas.DescribeDashboardSnapshotJobResultInput,
        output_schema = schemas.DescribeDashboardSnapshotJobResultOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/snapshot-jobs/{SnapshotJobId}/result",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDashboardsQAConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDashboardsQAConfiguration",
        input_schema = schemas.DescribeDashboardsQAConfigurationInput,
        output_schema = schemas.DescribeDashboardsQAConfigurationOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/dashboards-qa-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataSet",
        input_schema = schemas.DescribeDataSetInput,
        output_schema = schemas.DescribeDataSetOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataSetPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataSetPermissions",
        input_schema = schemas.DescribeDataSetPermissionsInput,
        output_schema = schemas.DescribeDataSetPermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataSetRefreshProperties(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataSetRefreshProperties",
        input_schema = schemas.DescribeDataSetRefreshPropertiesInput,
        output_schema = schemas.DescribeDataSetRefreshPropertiesOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-properties",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataSource",
        input_schema = schemas.DescribeDataSourceInput,
        output_schema = schemas.DescribeDataSourceOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/data-sources/{DataSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataSourcePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataSourcePermissions",
        input_schema = schemas.DescribeDataSourcePermissionsInput,
        output_schema = schemas.DescribeDataSourcePermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDefaultQBusinessApplication(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDefaultQBusinessApplication",
        input_schema = schemas.DescribeDefaultQBusinessApplicationInput,
        output_schema = schemas.DescribeDefaultQBusinessApplicationOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/default-qbusiness-application",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFolder(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFolder",
        input_schema = schemas.DescribeFolderInput,
        output_schema = schemas.DescribeFolderOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/folders/{FolderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFolderPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFolderPermissions",
        input_schema = schemas.DescribeFolderPermissionsInput,
        output_schema = schemas.DescribeFolderPermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/folders/{FolderId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFolderResolvedPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFolderResolvedPermissions",
        input_schema = schemas.DescribeFolderResolvedPermissionsInput,
        output_schema = schemas.DescribeFolderResolvedPermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/folders/{FolderId}/resolved-permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGroup",
        input_schema = schemas.DescribeGroupInput,
        output_schema = schemas.DescribeGroupOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGroupMembership(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGroupMembership",
        input_schema = schemas.DescribeGroupMembershipInput,
        output_schema = schemas.DescribeGroupMembershipOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIAMPolicyAssignment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIAMPolicyAssignment",
        input_schema = schemas.DescribeIAMPolicyAssignmentInput,
        output_schema = schemas.DescribeIAMPolicyAssignmentOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIngestion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIngestion",
        input_schema = schemas.DescribeIngestionInput,
        output_schema = schemas.DescribeIngestionOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpRestriction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpRestriction",
        input_schema = schemas.DescribeIpRestrictionInput,
        output_schema = schemas.DescribeIpRestrictionOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/ip-restriction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeKeyRegistration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeKeyRegistration",
        input_schema = schemas.DescribeKeyRegistrationInput,
        output_schema = schemas.DescribeKeyRegistrationOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/key-registration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNamespace",
        input_schema = schemas.DescribeNamespaceInput,
        output_schema = schemas.DescribeNamespaceOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeQPersonalizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQPersonalizationConfiguration",
        input_schema = schemas.DescribeQPersonalizationConfigurationInput,
        output_schema = schemas.DescribeQPersonalizationConfigurationOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/q-personalization-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeQuickSightQSearchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQuickSightQSearchConfiguration",
        input_schema = schemas.DescribeQuickSightQSearchConfigurationInput,
        output_schema = schemas.DescribeQuickSightQSearchConfigurationOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/quicksight-q-search-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRefreshSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRefreshSchedule",
        input_schema = schemas.DescribeRefreshScheduleInput,
        output_schema = schemas.DescribeRefreshScheduleOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-schedules/{ScheduleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRoleCustomPermission(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRoleCustomPermission",
        input_schema = schemas.DescribeRoleCustomPermissionInput,
        output_schema = schemas.DescribeRoleCustomPermissionOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/roles/{Role}/custom-permission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSelfUpgradeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSelfUpgradeConfiguration",
        input_schema = schemas.DescribeSelfUpgradeConfigurationInput,
        output_schema = schemas.DescribeSelfUpgradeConfigurationOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/self-upgrade-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTemplate",
        input_schema = schemas.DescribeTemplateInput,
        output_schema = schemas.DescribeTemplateOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTemplateAlias(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTemplateAlias",
        input_schema = schemas.DescribeTemplateAliasInput,
        output_schema = schemas.DescribeTemplateAliasOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTemplateDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTemplateDefinition",
        input_schema = schemas.DescribeTemplateDefinitionInput,
        output_schema = schemas.DescribeTemplateDefinitionOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}/definition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTemplatePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTemplatePermissions",
        input_schema = schemas.DescribeTemplatePermissionsInput,
        output_schema = schemas.DescribeTemplatePermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTheme(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTheme",
        input_schema = schemas.DescribeThemeInput,
        output_schema = schemas.DescribeThemeOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeThemeAlias(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThemeAlias",
        input_schema = schemas.DescribeThemeAliasInput,
        output_schema = schemas.DescribeThemeAliasOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeThemePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThemePermissions",
        input_schema = schemas.DescribeThemePermissionsInput,
        output_schema = schemas.DescribeThemePermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTopic(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTopic",
        input_schema = schemas.DescribeTopicInput,
        output_schema = schemas.DescribeTopicOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTopicPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTopicPermissions",
        input_schema = schemas.DescribeTopicPermissionsInput,
        output_schema = schemas.DescribeTopicPermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTopicRefresh(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTopicRefresh",
        input_schema = schemas.DescribeTopicRefreshInput,
        output_schema = schemas.DescribeTopicRefreshOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}/refresh/{RefreshId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTopicRefreshSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTopicRefreshSchedule",
        input_schema = schemas.DescribeTopicRefreshScheduleInput,
        output_schema = schemas.DescribeTopicRefreshScheduleOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}/schedules/{DatasetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUser",
        input_schema = schemas.DescribeUserInput,
        output_schema = schemas.DescribeUserOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVPCConnection(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVPCConnection",
        input_schema = schemas.DescribeVPCConnectionInput,
        output_schema = schemas.DescribeVPCConnectionOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/vpc-connections/{VPCConnectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateEmbedUrlForAnonymousUser(input, options)
    return self:invokeOperation(input, {
        name = "GenerateEmbedUrlForAnonymousUser",
        input_schema = schemas.GenerateEmbedUrlForAnonymousUserInput,
        output_schema = schemas.GenerateEmbedUrlForAnonymousUserOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/embed-url/anonymous-user",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateEmbedUrlForRegisteredUser(input, options)
    return self:invokeOperation(input, {
        name = "GenerateEmbedUrlForRegisteredUser",
        input_schema = schemas.GenerateEmbedUrlForRegisteredUserInput,
        output_schema = schemas.GenerateEmbedUrlForRegisteredUserOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/embed-url/registered-user",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateEmbedUrlForRegisteredUserWithIdentity(input, options)
    return self:invokeOperation(input, {
        name = "GenerateEmbedUrlForRegisteredUserWithIdentity",
        input_schema = schemas.GenerateEmbedUrlForRegisteredUserWithIdentityInput,
        output_schema = schemas.GenerateEmbedUrlForRegisteredUserWithIdentityOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/embed-url/registered-user-with-identity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDashboardEmbedUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetDashboardEmbedUrl",
        input_schema = schemas.GetDashboardEmbedUrlInput,
        output_schema = schemas.GetDashboardEmbedUrlOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/embed-url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFlowMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetFlowMetadata",
        input_schema = schemas.GetFlowMetadataInput,
        output_schema = schemas.GetFlowMetadataOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/flows/{FlowId}/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFlowPermissions(input, options)
    return self:invokeOperation(input, {
        name = "GetFlowPermissions",
        input_schema = schemas.GetFlowPermissionsInput,
        output_schema = schemas.GetFlowPermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/flows/{FlowId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdentityContext(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityContext",
        input_schema = schemas.GetIdentityContextInput,
        output_schema = schemas.GetIdentityContextOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/identity-context",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSessionEmbedUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetSessionEmbedUrl",
        input_schema = schemas.GetSessionEmbedUrlInput,
        output_schema = schemas.GetSessionEmbedUrlOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/session-embed-url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listActionConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListActionConnectors",
        input_schema = schemas.ListActionConnectorsInput,
        output_schema = schemas.ListActionConnectorsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/action-connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnalyses(input, options)
    return self:invokeOperation(input, {
        name = "ListAnalyses",
        input_schema = schemas.ListAnalysesInput,
        output_schema = schemas.ListAnalysesOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/analyses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssetBundleExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetBundleExportJobs",
        input_schema = schemas.ListAssetBundleExportJobsInput,
        output_schema = schemas.ListAssetBundleExportJobsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/asset-bundle-export-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssetBundleImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetBundleImportJobs",
        input_schema = schemas.ListAssetBundleImportJobsInput,
        output_schema = schemas.ListAssetBundleImportJobsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/asset-bundle-import-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBrands(input, options)
    return self:invokeOperation(input, {
        name = "ListBrands",
        input_schema = schemas.ListBrandsInput,
        output_schema = schemas.ListBrandsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/brands",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomPermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomPermissions",
        input_schema = schemas.ListCustomPermissionsInput,
        output_schema = schemas.ListCustomPermissionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/custom-permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDashboards(input, options)
    return self:invokeOperation(input, {
        name = "ListDashboards",
        input_schema = schemas.ListDashboardsInput,
        output_schema = schemas.ListDashboardsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/dashboards",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDashboardVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListDashboardVersions",
        input_schema = schemas.ListDashboardVersionsInput,
        output_schema = schemas.ListDashboardVersionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSets(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSets",
        input_schema = schemas.ListDataSetsInput,
        output_schema = schemas.ListDataSetsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/data-sets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSources",
        input_schema = schemas.ListDataSourcesInput,
        output_schema = schemas.ListDataSourcesOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/data-sources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFlows(input, options)
    return self:invokeOperation(input, {
        name = "ListFlows",
        input_schema = schemas.ListFlowsInput,
        output_schema = schemas.ListFlowsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/flows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFolderMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListFolderMembers",
        input_schema = schemas.ListFolderMembersInput,
        output_schema = schemas.ListFolderMembersOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/folders/{FolderId}/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFolders(input, options)
    return self:invokeOperation(input, {
        name = "ListFolders",
        input_schema = schemas.ListFoldersInput,
        output_schema = schemas.ListFoldersOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/folders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFoldersForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListFoldersForResource",
        input_schema = schemas.ListFoldersForResourceInput,
        output_schema = schemas.ListFoldersForResourceOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/resource/{ResourceArn}/folders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupMemberships(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupMemberships",
        input_schema = schemas.ListGroupMembershipsInput,
        output_schema = schemas.ListGroupMembershipsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGroups",
        input_schema = schemas.ListGroupsInput,
        output_schema = schemas.ListGroupsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIAMPolicyAssignments(input, options)
    return self:invokeOperation(input, {
        name = "ListIAMPolicyAssignments",
        input_schema = schemas.ListIAMPolicyAssignmentsInput,
        output_schema = schemas.ListIAMPolicyAssignmentsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/v2/iam-policy-assignments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIAMPolicyAssignmentsForUser(input, options)
    return self:invokeOperation(input, {
        name = "ListIAMPolicyAssignmentsForUser",
        input_schema = schemas.ListIAMPolicyAssignmentsForUserInput,
        output_schema = schemas.ListIAMPolicyAssignmentsForUserOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/iam-policy-assignments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdentityPropagationConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentityPropagationConfigs",
        input_schema = schemas.ListIdentityPropagationConfigsInput,
        output_schema = schemas.ListIdentityPropagationConfigsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/identity-propagation-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIngestions(input, options)
    return self:invokeOperation(input, {
        name = "ListIngestions",
        input_schema = schemas.ListIngestionsInput,
        output_schema = schemas.ListIngestionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNamespaces(input, options)
    return self:invokeOperation(input, {
        name = "ListNamespaces",
        input_schema = schemas.ListNamespacesInput,
        output_schema = schemas.ListNamespacesOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRefreshSchedules(input, options)
    return self:invokeOperation(input, {
        name = "ListRefreshSchedules",
        input_schema = schemas.ListRefreshSchedulesInput,
        output_schema = schemas.ListRefreshSchedulesOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-schedules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoleMemberships(input, options)
    return self:invokeOperation(input, {
        name = "ListRoleMemberships",
        input_schema = schemas.ListRoleMembershipsInput,
        output_schema = schemas.ListRoleMembershipsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/roles/{Role}/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSelfUpgrades(input, options)
    return self:invokeOperation(input, {
        name = "ListSelfUpgrades",
        input_schema = schemas.ListSelfUpgradesInput,
        output_schema = schemas.ListSelfUpgradesOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/self-upgrade-requests",
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
        http_path = "/resources/{ResourceArn}/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTemplateAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateAliases",
        input_schema = schemas.ListTemplateAliasesInput,
        output_schema = schemas.ListTemplateAliasesOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplates",
        input_schema = schemas.ListTemplatesInput,
        output_schema = schemas.ListTemplatesOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateVersions",
        input_schema = schemas.ListTemplateVersionsInput,
        output_schema = schemas.ListTemplateVersionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThemeAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListThemeAliases",
        input_schema = schemas.ListThemeAliasesInput,
        output_schema = schemas.ListThemeAliasesOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThemes(input, options)
    return self:invokeOperation(input, {
        name = "ListThemes",
        input_schema = schemas.ListThemesInput,
        output_schema = schemas.ListThemesOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/themes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThemeVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListThemeVersions",
        input_schema = schemas.ListThemeVersionsInput,
        output_schema = schemas.ListThemeVersionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTopicRefreshSchedules(input, options)
    return self:invokeOperation(input, {
        name = "ListTopicRefreshSchedules",
        input_schema = schemas.ListTopicRefreshSchedulesInput,
        output_schema = schemas.ListTopicRefreshSchedulesOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}/schedules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTopicReviewedAnswers(input, options)
    return self:invokeOperation(input, {
        name = "ListTopicReviewedAnswers",
        input_schema = schemas.ListTopicReviewedAnswersInput,
        output_schema = schemas.ListTopicReviewedAnswersOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}/reviewed-answers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTopics(input, options)
    return self:invokeOperation(input, {
        name = "ListTopics",
        input_schema = schemas.ListTopicsInput,
        output_schema = schemas.ListTopicsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/topics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUserGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListUserGroups",
        input_schema = schemas.ListUserGroupsInput,
        output_schema = schemas.ListUserGroupsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = schemas.ListUsersInput,
        output_schema = schemas.ListUsersOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVPCConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListVPCConnections",
        input_schema = schemas.ListVPCConnectionsInput,
        output_schema = schemas.ListVPCConnectionsOutput,
        http_method = "GET",
        http_path = "/accounts/{AwsAccountId}/vpc-connections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:predictQAResults(input, options)
    return self:invokeOperation(input, {
        name = "PredictQAResults",
        input_schema = schemas.PredictQAResultsInput,
        output_schema = schemas.PredictQAResultsOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/qa/predict",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDataSetRefreshProperties(input, options)
    return self:invokeOperation(input, {
        name = "PutDataSetRefreshProperties",
        input_schema = schemas.PutDataSetRefreshPropertiesInput,
        output_schema = schemas.PutDataSetRefreshPropertiesOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-properties",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerUser(input, options)
    return self:invokeOperation(input, {
        name = "RegisterUser",
        input_schema = schemas.RegisterUserInput,
        output_schema = schemas.RegisterUserOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "RestoreAnalysis",
        input_schema = schemas.RestoreAnalysisInput,
        output_schema = schemas.RestoreAnalysisOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/restore/analyses/{AnalysisId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchActionConnectors(input, options)
    return self:invokeOperation(input, {
        name = "SearchActionConnectors",
        input_schema = schemas.SearchActionConnectorsInput,
        output_schema = schemas.SearchActionConnectorsOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/search/action-connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchAnalyses(input, options)
    return self:invokeOperation(input, {
        name = "SearchAnalyses",
        input_schema = schemas.SearchAnalysesInput,
        output_schema = schemas.SearchAnalysesOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/search/analyses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchDashboards(input, options)
    return self:invokeOperation(input, {
        name = "SearchDashboards",
        input_schema = schemas.SearchDashboardsInput,
        output_schema = schemas.SearchDashboardsOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/search/dashboards",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchDataSets(input, options)
    return self:invokeOperation(input, {
        name = "SearchDataSets",
        input_schema = schemas.SearchDataSetsInput,
        output_schema = schemas.SearchDataSetsOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/search/data-sets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchDataSources(input, options)
    return self:invokeOperation(input, {
        name = "SearchDataSources",
        input_schema = schemas.SearchDataSourcesInput,
        output_schema = schemas.SearchDataSourcesOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/search/data-sources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchFlows(input, options)
    return self:invokeOperation(input, {
        name = "SearchFlows",
        input_schema = schemas.SearchFlowsInput,
        output_schema = schemas.SearchFlowsOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/flows/searchFlows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchFolders(input, options)
    return self:invokeOperation(input, {
        name = "SearchFolders",
        input_schema = schemas.SearchFoldersInput,
        output_schema = schemas.SearchFoldersOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/search/folders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchGroups(input, options)
    return self:invokeOperation(input, {
        name = "SearchGroups",
        input_schema = schemas.SearchGroupsInput,
        output_schema = schemas.SearchGroupsOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups-search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchTopics(input, options)
    return self:invokeOperation(input, {
        name = "SearchTopics",
        input_schema = schemas.SearchTopicsInput,
        output_schema = schemas.SearchTopicsOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/search/topics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAssetBundleExportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartAssetBundleExportJob",
        input_schema = schemas.StartAssetBundleExportJobInput,
        output_schema = schemas.StartAssetBundleExportJobOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/asset-bundle-export-jobs/export",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAssetBundleImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartAssetBundleImportJob",
        input_schema = schemas.StartAssetBundleImportJobInput,
        output_schema = schemas.StartAssetBundleImportJobOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/asset-bundle-import-jobs/import",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAutomationJob(input, options)
    return self:invokeOperation(input, {
        name = "StartAutomationJob",
        input_schema = schemas.StartAutomationJobInput,
        output_schema = schemas.StartAutomationJobOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/automation-groups/{AutomationGroupId}/automations/{AutomationId}/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDashboardSnapshotJob(input, options)
    return self:invokeOperation(input, {
        name = "StartDashboardSnapshotJob",
        input_schema = schemas.StartDashboardSnapshotJobInput,
        output_schema = schemas.StartDashboardSnapshotJobOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/snapshot-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDashboardSnapshotJobSchedule(input, options)
    return self:invokeOperation(input, {
        name = "StartDashboardSnapshotJobSchedule",
        input_schema = schemas.StartDashboardSnapshotJobScheduleInput,
        output_schema = schemas.StartDashboardSnapshotJobScheduleOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/schedules/{ScheduleId}",
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
        http_path = "/resources/{ResourceArn}/tags",
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
        http_path = "/resources/{ResourceArn}/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountCustomization(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountCustomization",
        input_schema = schemas.UpdateAccountCustomizationInput,
        output_schema = schemas.UpdateAccountCustomizationOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/customizations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountCustomPermission(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountCustomPermission",
        input_schema = schemas.UpdateAccountCustomPermissionInput,
        output_schema = schemas.UpdateAccountCustomPermissionOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/custom-permission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountSettings",
        input_schema = schemas.UpdateAccountSettingsInput,
        output_schema = schemas.UpdateAccountSettingsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateActionConnector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateActionConnector",
        input_schema = schemas.UpdateActionConnectorInput,
        output_schema = schemas.UpdateActionConnectorOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/action-connectors/{ActionConnectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateActionConnectorPermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateActionConnectorPermissions",
        input_schema = schemas.UpdateActionConnectorPermissionsInput,
        output_schema = schemas.UpdateActionConnectorPermissionsOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/action-connectors/{ActionConnectorId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnalysis",
        input_schema = schemas.UpdateAnalysisInput,
        output_schema = schemas.UpdateAnalysisOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/analyses/{AnalysisId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAnalysisPermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnalysisPermissions",
        input_schema = schemas.UpdateAnalysisPermissionsInput,
        output_schema = schemas.UpdateAnalysisPermissionsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/analyses/{AnalysisId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplicationWithTokenExchangeGrant(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationWithTokenExchangeGrant",
        input_schema = schemas.UpdateApplicationWithTokenExchangeGrantInput,
        output_schema = schemas.UpdateApplicationWithTokenExchangeGrantOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/application-with-token-exchange-grant",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBrand(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBrand",
        input_schema = schemas.UpdateBrandInput,
        output_schema = schemas.UpdateBrandOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/brands/{BrandId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBrandAssignment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBrandAssignment",
        input_schema = schemas.UpdateBrandAssignmentInput,
        output_schema = schemas.UpdateBrandAssignmentOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/brandassignments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBrandPublishedVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBrandPublishedVersion",
        input_schema = schemas.UpdateBrandPublishedVersionInput,
        output_schema = schemas.UpdateBrandPublishedVersionOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/brands/{BrandId}/publishedversion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCustomPermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomPermissions",
        input_schema = schemas.UpdateCustomPermissionsInput,
        output_schema = schemas.UpdateCustomPermissionsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/custom-permissions/{CustomPermissionsName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDashboard(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDashboard",
        input_schema = schemas.UpdateDashboardInput,
        output_schema = schemas.UpdateDashboardOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDashboardLinks(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDashboardLinks",
        input_schema = schemas.UpdateDashboardLinksInput,
        output_schema = schemas.UpdateDashboardLinksOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/linked-entities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDashboardPermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDashboardPermissions",
        input_schema = schemas.UpdateDashboardPermissionsInput,
        output_schema = schemas.UpdateDashboardPermissionsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDashboardPublishedVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDashboardPublishedVersion",
        input_schema = schemas.UpdateDashboardPublishedVersionInput,
        output_schema = schemas.UpdateDashboardPublishedVersionOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions/{VersionNumber}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDashboardsQAConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDashboardsQAConfiguration",
        input_schema = schemas.UpdateDashboardsQAConfigurationInput,
        output_schema = schemas.UpdateDashboardsQAConfigurationOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/dashboards-qa-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSet",
        input_schema = schemas.UpdateDataSetInput,
        output_schema = schemas.UpdateDataSetOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataSetPermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSetPermissions",
        input_schema = schemas.UpdateDataSetPermissionsInput,
        output_schema = schemas.UpdateDataSetPermissionsOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSource",
        input_schema = schemas.UpdateDataSourceInput,
        output_schema = schemas.UpdateDataSourceOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/data-sources/{DataSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataSourcePermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSourcePermissions",
        input_schema = schemas.UpdateDataSourcePermissionsInput,
        output_schema = schemas.UpdateDataSourcePermissionsOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDefaultQBusinessApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDefaultQBusinessApplication",
        input_schema = schemas.UpdateDefaultQBusinessApplicationInput,
        output_schema = schemas.UpdateDefaultQBusinessApplicationOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/default-qbusiness-application",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFlowPermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlowPermissions",
        input_schema = schemas.UpdateFlowPermissionsInput,
        output_schema = schemas.UpdateFlowPermissionsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/flows/{FlowId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFolder(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFolder",
        input_schema = schemas.UpdateFolderInput,
        output_schema = schemas.UpdateFolderOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/folders/{FolderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFolderPermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFolderPermissions",
        input_schema = schemas.UpdateFolderPermissionsInput,
        output_schema = schemas.UpdateFolderPermissionsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/folders/{FolderId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroup",
        input_schema = schemas.UpdateGroupInput,
        output_schema = schemas.UpdateGroupOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIAMPolicyAssignment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIAMPolicyAssignment",
        input_schema = schemas.UpdateIAMPolicyAssignmentInput,
        output_schema = schemas.UpdateIAMPolicyAssignmentOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIdentityPropagationConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdentityPropagationConfig",
        input_schema = schemas.UpdateIdentityPropagationConfigInput,
        output_schema = schemas.UpdateIdentityPropagationConfigOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/identity-propagation-config/{Service}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIpRestriction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIpRestriction",
        input_schema = schemas.UpdateIpRestrictionInput,
        output_schema = schemas.UpdateIpRestrictionOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/ip-restriction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKeyRegistration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKeyRegistration",
        input_schema = schemas.UpdateKeyRegistrationInput,
        output_schema = schemas.UpdateKeyRegistrationOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/key-registration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePublicSharingSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePublicSharingSettings",
        input_schema = schemas.UpdatePublicSharingSettingsInput,
        output_schema = schemas.UpdatePublicSharingSettingsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/public-sharing-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQPersonalizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQPersonalizationConfiguration",
        input_schema = schemas.UpdateQPersonalizationConfigurationInput,
        output_schema = schemas.UpdateQPersonalizationConfigurationOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/q-personalization-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQuickSightQSearchConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuickSightQSearchConfiguration",
        input_schema = schemas.UpdateQuickSightQSearchConfigurationInput,
        output_schema = schemas.UpdateQuickSightQSearchConfigurationOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/quicksight-q-search-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRefreshSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRefreshSchedule",
        input_schema = schemas.UpdateRefreshScheduleInput,
        output_schema = schemas.UpdateRefreshScheduleOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-schedules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoleCustomPermission(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoleCustomPermission",
        input_schema = schemas.UpdateRoleCustomPermissionInput,
        output_schema = schemas.UpdateRoleCustomPermissionOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/roles/{Role}/custom-permission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSelfUpgrade(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSelfUpgrade",
        input_schema = schemas.UpdateSelfUpgradeInput,
        output_schema = schemas.UpdateSelfUpgradeOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/update-self-upgrade-request",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSelfUpgradeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSelfUpgradeConfiguration",
        input_schema = schemas.UpdateSelfUpgradeConfigurationInput,
        output_schema = schemas.UpdateSelfUpgradeConfigurationOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/self-upgrade-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSPICECapacityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSPICECapacityConfiguration",
        input_schema = schemas.UpdateSPICECapacityConfigurationInput,
        output_schema = schemas.UpdateSPICECapacityConfigurationOutput,
        http_method = "POST",
        http_path = "/accounts/{AwsAccountId}/spice-capacity-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplate",
        input_schema = schemas.UpdateTemplateInput,
        output_schema = schemas.UpdateTemplateOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTemplateAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplateAlias",
        input_schema = schemas.UpdateTemplateAliasInput,
        output_schema = schemas.UpdateTemplateAliasOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTemplatePermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplatePermissions",
        input_schema = schemas.UpdateTemplatePermissionsInput,
        output_schema = schemas.UpdateTemplatePermissionsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTheme(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTheme",
        input_schema = schemas.UpdateThemeInput,
        output_schema = schemas.UpdateThemeOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThemeAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThemeAlias",
        input_schema = schemas.UpdateThemeAliasInput,
        output_schema = schemas.UpdateThemeAliasOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThemePermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThemePermissions",
        input_schema = schemas.UpdateThemePermissionsInput,
        output_schema = schemas.UpdateThemePermissionsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/themes/{ThemeId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTopic(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTopic",
        input_schema = schemas.UpdateTopicInput,
        output_schema = schemas.UpdateTopicOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTopicPermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTopicPermissions",
        input_schema = schemas.UpdateTopicPermissionsInput,
        output_schema = schemas.UpdateTopicPermissionsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTopicRefreshSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTopicRefreshSchedule",
        input_schema = schemas.UpdateTopicRefreshScheduleInput,
        output_schema = schemas.UpdateTopicRefreshScheduleOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/topics/{TopicId}/schedules/{DatasetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = schemas.UpdateUserInput,
        output_schema = schemas.UpdateUserOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserCustomPermission(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserCustomPermission",
        input_schema = schemas.UpdateUserCustomPermissionInput,
        output_schema = schemas.UpdateUserCustomPermissionOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/custom-permission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVPCConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVPCConnection",
        input_schema = schemas.UpdateVPCConnectionInput,
        output_schema = schemas.UpdateVPCConnectionOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/vpc-connections/{VPCConnectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
