local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("quicksight.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("quicksight.types")

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
        input_schema = types.BatchCreateTopicReviewedAnswerInput,
        output_schema = types.BatchCreateTopicReviewedAnswerOutput,
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
        input_schema = types.BatchDeleteTopicReviewedAnswerInput,
        output_schema = types.BatchDeleteTopicReviewedAnswerOutput,
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
        input_schema = types.CancelIngestionInput,
        output_schema = types.CancelIngestionOutput,
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
        input_schema = types.CreateAccountCustomizationInput,
        output_schema = types.CreateAccountCustomizationOutput,
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
        input_schema = types.CreateAccountSubscriptionInput,
        output_schema = types.CreateAccountSubscriptionOutput,
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
        input_schema = types.CreateActionConnectorInput,
        output_schema = types.CreateActionConnectorOutput,
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
        input_schema = types.CreateAnalysisInput,
        output_schema = types.CreateAnalysisOutput,
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
        input_schema = types.CreateBrandInput,
        output_schema = types.CreateBrandOutput,
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
        input_schema = types.CreateCustomPermissionsInput,
        output_schema = types.CreateCustomPermissionsOutput,
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
        input_schema = types.CreateDashboardInput,
        output_schema = types.CreateDashboardOutput,
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
        input_schema = types.CreateDataSetInput,
        output_schema = types.CreateDataSetOutput,
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
        input_schema = types.CreateDataSourceInput,
        output_schema = types.CreateDataSourceOutput,
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
        input_schema = types.CreateFolderInput,
        output_schema = types.CreateFolderOutput,
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
        input_schema = types.CreateFolderMembershipInput,
        output_schema = types.CreateFolderMembershipOutput,
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
        input_schema = types.CreateGroupInput,
        output_schema = types.CreateGroupOutput,
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
        input_schema = types.CreateGroupMembershipInput,
        output_schema = types.CreateGroupMembershipOutput,
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
        input_schema = types.CreateIAMPolicyAssignmentInput,
        output_schema = types.CreateIAMPolicyAssignmentOutput,
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
        input_schema = types.CreateIngestionInput,
        output_schema = types.CreateIngestionOutput,
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
        input_schema = types.CreateNamespaceInput,
        output_schema = types.CreateNamespaceOutput,
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
        input_schema = types.CreateRefreshScheduleInput,
        output_schema = types.CreateRefreshScheduleOutput,
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
        input_schema = types.CreateRoleMembershipInput,
        output_schema = types.CreateRoleMembershipOutput,
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
        input_schema = types.CreateTemplateInput,
        output_schema = types.CreateTemplateOutput,
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
        input_schema = types.CreateTemplateAliasInput,
        output_schema = types.CreateTemplateAliasOutput,
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
        input_schema = types.CreateThemeInput,
        output_schema = types.CreateThemeOutput,
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
        input_schema = types.CreateThemeAliasInput,
        output_schema = types.CreateThemeAliasOutput,
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
        input_schema = types.CreateTopicInput,
        output_schema = types.CreateTopicOutput,
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
        input_schema = types.CreateTopicRefreshScheduleInput,
        output_schema = types.CreateTopicRefreshScheduleOutput,
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
        input_schema = types.CreateVPCConnectionInput,
        output_schema = types.CreateVPCConnectionOutput,
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
        input_schema = types.DeleteAccountCustomizationInput,
        output_schema = types.DeleteAccountCustomizationOutput,
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
        input_schema = types.DeleteAccountCustomPermissionInput,
        output_schema = types.DeleteAccountCustomPermissionOutput,
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
        input_schema = types.DeleteAccountSubscriptionInput,
        output_schema = types.DeleteAccountSubscriptionOutput,
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
        input_schema = types.DeleteActionConnectorInput,
        output_schema = types.DeleteActionConnectorOutput,
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
        input_schema = types.DeleteAnalysisInput,
        output_schema = types.DeleteAnalysisOutput,
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
        input_schema = types.DeleteBrandInput,
        output_schema = types.DeleteBrandOutput,
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
        input_schema = types.DeleteBrandAssignmentInput,
        output_schema = types.DeleteBrandAssignmentOutput,
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
        input_schema = types.DeleteCustomPermissionsInput,
        output_schema = types.DeleteCustomPermissionsOutput,
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
        input_schema = types.DeleteDashboardInput,
        output_schema = types.DeleteDashboardOutput,
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
        input_schema = types.DeleteDataSetInput,
        output_schema = types.DeleteDataSetOutput,
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
        input_schema = types.DeleteDataSetRefreshPropertiesInput,
        output_schema = types.DeleteDataSetRefreshPropertiesOutput,
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
        input_schema = types.DeleteDataSourceInput,
        output_schema = types.DeleteDataSourceOutput,
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
        input_schema = types.DeleteDefaultQBusinessApplicationInput,
        output_schema = types.DeleteDefaultQBusinessApplicationOutput,
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
        input_schema = types.DeleteFolderInput,
        output_schema = types.DeleteFolderOutput,
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
        input_schema = types.DeleteFolderMembershipInput,
        output_schema = types.DeleteFolderMembershipOutput,
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
        input_schema = types.DeleteGroupInput,
        output_schema = types.DeleteGroupOutput,
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
        input_schema = types.DeleteGroupMembershipInput,
        output_schema = types.DeleteGroupMembershipOutput,
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
        input_schema = types.DeleteIAMPolicyAssignmentInput,
        output_schema = types.DeleteIAMPolicyAssignmentOutput,
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
        input_schema = types.DeleteIdentityPropagationConfigInput,
        output_schema = types.DeleteIdentityPropagationConfigOutput,
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
        input_schema = types.DeleteNamespaceInput,
        output_schema = types.DeleteNamespaceOutput,
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
        input_schema = types.DeleteRefreshScheduleInput,
        output_schema = types.DeleteRefreshScheduleOutput,
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
        input_schema = types.DeleteRoleCustomPermissionInput,
        output_schema = types.DeleteRoleCustomPermissionOutput,
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
        input_schema = types.DeleteRoleMembershipInput,
        output_schema = types.DeleteRoleMembershipOutput,
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
        input_schema = types.DeleteTemplateInput,
        output_schema = types.DeleteTemplateOutput,
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
        input_schema = types.DeleteTemplateAliasInput,
        output_schema = types.DeleteTemplateAliasOutput,
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
        input_schema = types.DeleteThemeInput,
        output_schema = types.DeleteThemeOutput,
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
        input_schema = types.DeleteThemeAliasInput,
        output_schema = types.DeleteThemeAliasOutput,
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
        input_schema = types.DeleteTopicInput,
        output_schema = types.DeleteTopicOutput,
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
        input_schema = types.DeleteTopicRefreshScheduleInput,
        output_schema = types.DeleteTopicRefreshScheduleOutput,
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
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
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
        input_schema = types.DeleteUserByPrincipalIdInput,
        output_schema = types.DeleteUserByPrincipalIdOutput,
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
        input_schema = types.DeleteUserCustomPermissionInput,
        output_schema = types.DeleteUserCustomPermissionOutput,
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
        input_schema = types.DeleteVPCConnectionInput,
        output_schema = types.DeleteVPCConnectionOutput,
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
        input_schema = types.DescribeAccountCustomizationInput,
        output_schema = types.DescribeAccountCustomizationOutput,
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
        input_schema = types.DescribeAccountCustomPermissionInput,
        output_schema = types.DescribeAccountCustomPermissionOutput,
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
        input_schema = types.DescribeAccountSettingsInput,
        output_schema = types.DescribeAccountSettingsOutput,
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
        input_schema = types.DescribeAccountSubscriptionInput,
        output_schema = types.DescribeAccountSubscriptionOutput,
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
        input_schema = types.DescribeActionConnectorInput,
        output_schema = types.DescribeActionConnectorOutput,
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
        input_schema = types.DescribeActionConnectorPermissionsInput,
        output_schema = types.DescribeActionConnectorPermissionsOutput,
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
        input_schema = types.DescribeAnalysisInput,
        output_schema = types.DescribeAnalysisOutput,
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
        input_schema = types.DescribeAnalysisDefinitionInput,
        output_schema = types.DescribeAnalysisDefinitionOutput,
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
        input_schema = types.DescribeAnalysisPermissionsInput,
        output_schema = types.DescribeAnalysisPermissionsOutput,
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
        input_schema = types.DescribeAssetBundleExportJobInput,
        output_schema = types.DescribeAssetBundleExportJobOutput,
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
        input_schema = types.DescribeAssetBundleImportJobInput,
        output_schema = types.DescribeAssetBundleImportJobOutput,
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
        input_schema = types.DescribeAutomationJobInput,
        output_schema = types.DescribeAutomationJobOutput,
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
        input_schema = types.DescribeBrandInput,
        output_schema = types.DescribeBrandOutput,
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
        input_schema = types.DescribeBrandAssignmentInput,
        output_schema = types.DescribeBrandAssignmentOutput,
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
        input_schema = types.DescribeBrandPublishedVersionInput,
        output_schema = types.DescribeBrandPublishedVersionOutput,
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
        input_schema = types.DescribeCustomPermissionsInput,
        output_schema = types.DescribeCustomPermissionsOutput,
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
        input_schema = types.DescribeDashboardInput,
        output_schema = types.DescribeDashboardOutput,
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
        input_schema = types.DescribeDashboardDefinitionInput,
        output_schema = types.DescribeDashboardDefinitionOutput,
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
        input_schema = types.DescribeDashboardPermissionsInput,
        output_schema = types.DescribeDashboardPermissionsOutput,
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
        input_schema = types.DescribeDashboardSnapshotJobInput,
        output_schema = types.DescribeDashboardSnapshotJobOutput,
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
        input_schema = types.DescribeDashboardSnapshotJobResultInput,
        output_schema = types.DescribeDashboardSnapshotJobResultOutput,
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
        input_schema = types.DescribeDashboardsQAConfigurationInput,
        output_schema = types.DescribeDashboardsQAConfigurationOutput,
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
        input_schema = types.DescribeDataSetInput,
        output_schema = types.DescribeDataSetOutput,
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
        input_schema = types.DescribeDataSetPermissionsInput,
        output_schema = types.DescribeDataSetPermissionsOutput,
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
        input_schema = types.DescribeDataSetRefreshPropertiesInput,
        output_schema = types.DescribeDataSetRefreshPropertiesOutput,
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
        input_schema = types.DescribeDataSourceInput,
        output_schema = types.DescribeDataSourceOutput,
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
        input_schema = types.DescribeDataSourcePermissionsInput,
        output_schema = types.DescribeDataSourcePermissionsOutput,
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
        input_schema = types.DescribeDefaultQBusinessApplicationInput,
        output_schema = types.DescribeDefaultQBusinessApplicationOutput,
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
        input_schema = types.DescribeFolderInput,
        output_schema = types.DescribeFolderOutput,
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
        input_schema = types.DescribeFolderPermissionsInput,
        output_schema = types.DescribeFolderPermissionsOutput,
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
        input_schema = types.DescribeFolderResolvedPermissionsInput,
        output_schema = types.DescribeFolderResolvedPermissionsOutput,
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
        input_schema = types.DescribeGroupInput,
        output_schema = types.DescribeGroupOutput,
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
        input_schema = types.DescribeGroupMembershipInput,
        output_schema = types.DescribeGroupMembershipOutput,
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
        input_schema = types.DescribeIAMPolicyAssignmentInput,
        output_schema = types.DescribeIAMPolicyAssignmentOutput,
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
        input_schema = types.DescribeIngestionInput,
        output_schema = types.DescribeIngestionOutput,
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
        input_schema = types.DescribeIpRestrictionInput,
        output_schema = types.DescribeIpRestrictionOutput,
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
        input_schema = types.DescribeKeyRegistrationInput,
        output_schema = types.DescribeKeyRegistrationOutput,
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
        input_schema = types.DescribeNamespaceInput,
        output_schema = types.DescribeNamespaceOutput,
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
        input_schema = types.DescribeQPersonalizationConfigurationInput,
        output_schema = types.DescribeQPersonalizationConfigurationOutput,
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
        input_schema = types.DescribeQuickSightQSearchConfigurationInput,
        output_schema = types.DescribeQuickSightQSearchConfigurationOutput,
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
        input_schema = types.DescribeRefreshScheduleInput,
        output_schema = types.DescribeRefreshScheduleOutput,
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
        input_schema = types.DescribeRoleCustomPermissionInput,
        output_schema = types.DescribeRoleCustomPermissionOutput,
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
        input_schema = types.DescribeSelfUpgradeConfigurationInput,
        output_schema = types.DescribeSelfUpgradeConfigurationOutput,
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
        input_schema = types.DescribeTemplateInput,
        output_schema = types.DescribeTemplateOutput,
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
        input_schema = types.DescribeTemplateAliasInput,
        output_schema = types.DescribeTemplateAliasOutput,
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
        input_schema = types.DescribeTemplateDefinitionInput,
        output_schema = types.DescribeTemplateDefinitionOutput,
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
        input_schema = types.DescribeTemplatePermissionsInput,
        output_schema = types.DescribeTemplatePermissionsOutput,
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
        input_schema = types.DescribeThemeInput,
        output_schema = types.DescribeThemeOutput,
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
        input_schema = types.DescribeThemeAliasInput,
        output_schema = types.DescribeThemeAliasOutput,
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
        input_schema = types.DescribeThemePermissionsInput,
        output_schema = types.DescribeThemePermissionsOutput,
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
        input_schema = types.DescribeTopicInput,
        output_schema = types.DescribeTopicOutput,
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
        input_schema = types.DescribeTopicPermissionsInput,
        output_schema = types.DescribeTopicPermissionsOutput,
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
        input_schema = types.DescribeTopicRefreshInput,
        output_schema = types.DescribeTopicRefreshOutput,
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
        input_schema = types.DescribeTopicRefreshScheduleInput,
        output_schema = types.DescribeTopicRefreshScheduleOutput,
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
        input_schema = types.DescribeUserInput,
        output_schema = types.DescribeUserOutput,
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
        input_schema = types.DescribeVPCConnectionInput,
        output_schema = types.DescribeVPCConnectionOutput,
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
        input_schema = types.GenerateEmbedUrlForAnonymousUserInput,
        output_schema = types.GenerateEmbedUrlForAnonymousUserOutput,
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
        input_schema = types.GenerateEmbedUrlForRegisteredUserInput,
        output_schema = types.GenerateEmbedUrlForRegisteredUserOutput,
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
        input_schema = types.GenerateEmbedUrlForRegisteredUserWithIdentityInput,
        output_schema = types.GenerateEmbedUrlForRegisteredUserWithIdentityOutput,
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
        input_schema = types.GetDashboardEmbedUrlInput,
        output_schema = types.GetDashboardEmbedUrlOutput,
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
        input_schema = types.GetFlowMetadataInput,
        output_schema = types.GetFlowMetadataOutput,
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
        input_schema = types.GetFlowPermissionsInput,
        output_schema = types.GetFlowPermissionsOutput,
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
        input_schema = types.GetIdentityContextInput,
        output_schema = types.GetIdentityContextOutput,
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
        input_schema = types.GetSessionEmbedUrlInput,
        output_schema = types.GetSessionEmbedUrlOutput,
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
        input_schema = types.ListActionConnectorsInput,
        output_schema = types.ListActionConnectorsOutput,
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
        input_schema = types.ListAnalysesInput,
        output_schema = types.ListAnalysesOutput,
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
        input_schema = types.ListAssetBundleExportJobsInput,
        output_schema = types.ListAssetBundleExportJobsOutput,
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
        input_schema = types.ListAssetBundleImportJobsInput,
        output_schema = types.ListAssetBundleImportJobsOutput,
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
        input_schema = types.ListBrandsInput,
        output_schema = types.ListBrandsOutput,
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
        input_schema = types.ListCustomPermissionsInput,
        output_schema = types.ListCustomPermissionsOutput,
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
        input_schema = types.ListDashboardsInput,
        output_schema = types.ListDashboardsOutput,
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
        input_schema = types.ListDashboardVersionsInput,
        output_schema = types.ListDashboardVersionsOutput,
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
        input_schema = types.ListDataSetsInput,
        output_schema = types.ListDataSetsOutput,
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
        input_schema = types.ListDataSourcesInput,
        output_schema = types.ListDataSourcesOutput,
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
        input_schema = types.ListFlowsInput,
        output_schema = types.ListFlowsOutput,
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
        input_schema = types.ListFolderMembersInput,
        output_schema = types.ListFolderMembersOutput,
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
        input_schema = types.ListFoldersInput,
        output_schema = types.ListFoldersOutput,
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
        input_schema = types.ListFoldersForResourceInput,
        output_schema = types.ListFoldersForResourceOutput,
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
        input_schema = types.ListGroupMembershipsInput,
        output_schema = types.ListGroupMembershipsOutput,
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
        input_schema = types.ListGroupsInput,
        output_schema = types.ListGroupsOutput,
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
        input_schema = types.ListIAMPolicyAssignmentsInput,
        output_schema = types.ListIAMPolicyAssignmentsOutput,
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
        input_schema = types.ListIAMPolicyAssignmentsForUserInput,
        output_schema = types.ListIAMPolicyAssignmentsForUserOutput,
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
        input_schema = types.ListIdentityPropagationConfigsInput,
        output_schema = types.ListIdentityPropagationConfigsOutput,
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
        input_schema = types.ListIngestionsInput,
        output_schema = types.ListIngestionsOutput,
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
        input_schema = types.ListNamespacesInput,
        output_schema = types.ListNamespacesOutput,
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
        input_schema = types.ListRefreshSchedulesInput,
        output_schema = types.ListRefreshSchedulesOutput,
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
        input_schema = types.ListRoleMembershipsInput,
        output_schema = types.ListRoleMembershipsOutput,
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
        input_schema = types.ListSelfUpgradesInput,
        output_schema = types.ListSelfUpgradesOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.ListTemplateAliasesInput,
        output_schema = types.ListTemplateAliasesOutput,
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
        input_schema = types.ListTemplatesInput,
        output_schema = types.ListTemplatesOutput,
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
        input_schema = types.ListTemplateVersionsInput,
        output_schema = types.ListTemplateVersionsOutput,
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
        input_schema = types.ListThemeAliasesInput,
        output_schema = types.ListThemeAliasesOutput,
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
        input_schema = types.ListThemesInput,
        output_schema = types.ListThemesOutput,
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
        input_schema = types.ListThemeVersionsInput,
        output_schema = types.ListThemeVersionsOutput,
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
        input_schema = types.ListTopicRefreshSchedulesInput,
        output_schema = types.ListTopicRefreshSchedulesOutput,
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
        input_schema = types.ListTopicReviewedAnswersInput,
        output_schema = types.ListTopicReviewedAnswersOutput,
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
        input_schema = types.ListTopicsInput,
        output_schema = types.ListTopicsOutput,
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
        input_schema = types.ListUserGroupsInput,
        output_schema = types.ListUserGroupsOutput,
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
        input_schema = types.ListUsersInput,
        output_schema = types.ListUsersOutput,
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
        input_schema = types.ListVPCConnectionsInput,
        output_schema = types.ListVPCConnectionsOutput,
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
        input_schema = types.PredictQAResultsInput,
        output_schema = types.PredictQAResultsOutput,
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
        input_schema = types.PutDataSetRefreshPropertiesInput,
        output_schema = types.PutDataSetRefreshPropertiesOutput,
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
        input_schema = types.RegisterUserInput,
        output_schema = types.RegisterUserOutput,
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
        input_schema = types.RestoreAnalysisInput,
        output_schema = types.RestoreAnalysisOutput,
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
        input_schema = types.SearchActionConnectorsInput,
        output_schema = types.SearchActionConnectorsOutput,
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
        input_schema = types.SearchAnalysesInput,
        output_schema = types.SearchAnalysesOutput,
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
        input_schema = types.SearchDashboardsInput,
        output_schema = types.SearchDashboardsOutput,
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
        input_schema = types.SearchDataSetsInput,
        output_schema = types.SearchDataSetsOutput,
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
        input_schema = types.SearchDataSourcesInput,
        output_schema = types.SearchDataSourcesOutput,
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
        input_schema = types.SearchFlowsInput,
        output_schema = types.SearchFlowsOutput,
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
        input_schema = types.SearchFoldersInput,
        output_schema = types.SearchFoldersOutput,
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
        input_schema = types.SearchGroupsInput,
        output_schema = types.SearchGroupsOutput,
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
        input_schema = types.SearchTopicsInput,
        output_schema = types.SearchTopicsOutput,
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
        input_schema = types.StartAssetBundleExportJobInput,
        output_schema = types.StartAssetBundleExportJobOutput,
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
        input_schema = types.StartAssetBundleImportJobInput,
        output_schema = types.StartAssetBundleImportJobOutput,
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
        input_schema = types.StartAutomationJobInput,
        output_schema = types.StartAutomationJobOutput,
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
        input_schema = types.StartDashboardSnapshotJobInput,
        output_schema = types.StartDashboardSnapshotJobOutput,
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
        input_schema = types.StartDashboardSnapshotJobScheduleInput,
        output_schema = types.StartDashboardSnapshotJobScheduleOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateAccountCustomizationInput,
        output_schema = types.UpdateAccountCustomizationOutput,
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
        input_schema = types.UpdateAccountCustomPermissionInput,
        output_schema = types.UpdateAccountCustomPermissionOutput,
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
        input_schema = types.UpdateAccountSettingsInput,
        output_schema = types.UpdateAccountSettingsOutput,
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
        input_schema = types.UpdateActionConnectorInput,
        output_schema = types.UpdateActionConnectorOutput,
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
        input_schema = types.UpdateActionConnectorPermissionsInput,
        output_schema = types.UpdateActionConnectorPermissionsOutput,
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
        input_schema = types.UpdateAnalysisInput,
        output_schema = types.UpdateAnalysisOutput,
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
        input_schema = types.UpdateAnalysisPermissionsInput,
        output_schema = types.UpdateAnalysisPermissionsOutput,
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
        input_schema = types.UpdateApplicationWithTokenExchangeGrantInput,
        output_schema = types.UpdateApplicationWithTokenExchangeGrantOutput,
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
        input_schema = types.UpdateBrandInput,
        output_schema = types.UpdateBrandOutput,
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
        input_schema = types.UpdateBrandAssignmentInput,
        output_schema = types.UpdateBrandAssignmentOutput,
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
        input_schema = types.UpdateBrandPublishedVersionInput,
        output_schema = types.UpdateBrandPublishedVersionOutput,
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
        input_schema = types.UpdateCustomPermissionsInput,
        output_schema = types.UpdateCustomPermissionsOutput,
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
        input_schema = types.UpdateDashboardInput,
        output_schema = types.UpdateDashboardOutput,
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
        input_schema = types.UpdateDashboardLinksInput,
        output_schema = types.UpdateDashboardLinksOutput,
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
        input_schema = types.UpdateDashboardPermissionsInput,
        output_schema = types.UpdateDashboardPermissionsOutput,
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
        input_schema = types.UpdateDashboardPublishedVersionInput,
        output_schema = types.UpdateDashboardPublishedVersionOutput,
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
        input_schema = types.UpdateDashboardsQAConfigurationInput,
        output_schema = types.UpdateDashboardsQAConfigurationOutput,
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
        input_schema = types.UpdateDataSetInput,
        output_schema = types.UpdateDataSetOutput,
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
        input_schema = types.UpdateDataSetPermissionsInput,
        output_schema = types.UpdateDataSetPermissionsOutput,
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
        input_schema = types.UpdateDataSourceInput,
        output_schema = types.UpdateDataSourceOutput,
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
        input_schema = types.UpdateDataSourcePermissionsInput,
        output_schema = types.UpdateDataSourcePermissionsOutput,
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
        input_schema = types.UpdateDefaultQBusinessApplicationInput,
        output_schema = types.UpdateDefaultQBusinessApplicationOutput,
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
        input_schema = types.UpdateFlowPermissionsInput,
        output_schema = types.UpdateFlowPermissionsOutput,
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
        input_schema = types.UpdateFolderInput,
        output_schema = types.UpdateFolderOutput,
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
        input_schema = types.UpdateFolderPermissionsInput,
        output_schema = types.UpdateFolderPermissionsOutput,
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
        input_schema = types.UpdateGroupInput,
        output_schema = types.UpdateGroupOutput,
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
        input_schema = types.UpdateIAMPolicyAssignmentInput,
        output_schema = types.UpdateIAMPolicyAssignmentOutput,
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
        input_schema = types.UpdateIdentityPropagationConfigInput,
        output_schema = types.UpdateIdentityPropagationConfigOutput,
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
        input_schema = types.UpdateIpRestrictionInput,
        output_schema = types.UpdateIpRestrictionOutput,
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
        input_schema = types.UpdateKeyRegistrationInput,
        output_schema = types.UpdateKeyRegistrationOutput,
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
        input_schema = types.UpdatePublicSharingSettingsInput,
        output_schema = types.UpdatePublicSharingSettingsOutput,
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
        input_schema = types.UpdateQPersonalizationConfigurationInput,
        output_schema = types.UpdateQPersonalizationConfigurationOutput,
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
        input_schema = types.UpdateQuickSightQSearchConfigurationInput,
        output_schema = types.UpdateQuickSightQSearchConfigurationOutput,
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
        input_schema = types.UpdateRefreshScheduleInput,
        output_schema = types.UpdateRefreshScheduleOutput,
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
        input_schema = types.UpdateRoleCustomPermissionInput,
        output_schema = types.UpdateRoleCustomPermissionOutput,
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
        input_schema = types.UpdateSelfUpgradeInput,
        output_schema = types.UpdateSelfUpgradeOutput,
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
        input_schema = types.UpdateSelfUpgradeConfigurationInput,
        output_schema = types.UpdateSelfUpgradeConfigurationOutput,
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
        input_schema = types.UpdateSPICECapacityConfigurationInput,
        output_schema = types.UpdateSPICECapacityConfigurationOutput,
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
        input_schema = types.UpdateTemplateInput,
        output_schema = types.UpdateTemplateOutput,
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
        input_schema = types.UpdateTemplateAliasInput,
        output_schema = types.UpdateTemplateAliasOutput,
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
        input_schema = types.UpdateTemplatePermissionsInput,
        output_schema = types.UpdateTemplatePermissionsOutput,
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
        input_schema = types.UpdateThemeInput,
        output_schema = types.UpdateThemeOutput,
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
        input_schema = types.UpdateThemeAliasInput,
        output_schema = types.UpdateThemeAliasOutput,
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
        input_schema = types.UpdateThemePermissionsInput,
        output_schema = types.UpdateThemePermissionsOutput,
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
        input_schema = types.UpdateTopicInput,
        output_schema = types.UpdateTopicOutput,
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
        input_schema = types.UpdateTopicPermissionsInput,
        output_schema = types.UpdateTopicPermissionsOutput,
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
        input_schema = types.UpdateTopicRefreshScheduleInput,
        output_schema = types.UpdateTopicRefreshScheduleOutput,
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
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
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
        input_schema = types.UpdateUserCustomPermissionInput,
        output_schema = types.UpdateUserCustomPermissionOutput,
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
        input_schema = types.UpdateVPCConnectionInput,
        output_schema = types.UpdateVPCConnectionOutput,
        http_method = "PUT",
        http_path = "/accounts/{AwsAccountId}/vpc-connections/{VPCConnectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
