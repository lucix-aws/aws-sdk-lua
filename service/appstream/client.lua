local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("appstream.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("appstream.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PhotonAdminProxyService"
    cfg.signing_name = "photonadminproxyservice"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateAppBlockBuilderAppBlock(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAppBlockBuilderAppBlock",
        input_schema = types.AssociateAppBlockBuilderAppBlockInput,
        output_schema = types.AssociateAppBlockBuilderAppBlockOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateApplicationFleet(input, options)
    return self:invokeOperation(input, {
        name = "AssociateApplicationFleet",
        input_schema = types.AssociateApplicationFleetInput,
        output_schema = types.AssociateApplicationFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateApplicationToEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "AssociateApplicationToEntitlement",
        input_schema = types.AssociateApplicationToEntitlementInput,
        output_schema = types.AssociateApplicationToEntitlementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateFleet(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFleet",
        input_schema = types.AssociateFleetInput,
        output_schema = types.AssociateFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateSoftwareToImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSoftwareToImageBuilder",
        input_schema = types.AssociateSoftwareToImageBuilderInput,
        output_schema = types.AssociateSoftwareToImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchAssociateUserStack(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateUserStack",
        input_schema = types.BatchAssociateUserStackInput,
        output_schema = types.BatchAssociateUserStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDisassociateUserStack(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateUserStack",
        input_schema = types.BatchDisassociateUserStackInput,
        output_schema = types.BatchDisassociateUserStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:copyImage(input, options)
    return self:invokeOperation(input, {
        name = "CopyImage",
        input_schema = types.CopyImageInput,
        output_schema = types.CopyImageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAppBlock(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppBlock",
        input_schema = types.CreateAppBlockInput,
        output_schema = types.CreateAppBlockOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAppBlockBuilder(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppBlockBuilder",
        input_schema = types.CreateAppBlockBuilderInput,
        output_schema = types.CreateAppBlockBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAppBlockBuilderStreamingURL(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppBlockBuilderStreamingURL",
        input_schema = types.CreateAppBlockBuilderStreamingURLInput,
        output_schema = types.CreateAppBlockBuilderStreamingURLOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDirectoryConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateDirectoryConfig",
        input_schema = types.CreateDirectoryConfigInput,
        output_schema = types.CreateDirectoryConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "CreateEntitlement",
        input_schema = types.CreateEntitlementInput,
        output_schema = types.CreateEntitlementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createExportImageTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateExportImageTask",
        input_schema = types.CreateExportImageTaskInput,
        output_schema = types.CreateExportImageTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleet",
        input_schema = types.CreateFleetInput,
        output_schema = types.CreateFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "CreateImageBuilder",
        input_schema = types.CreateImageBuilderInput,
        output_schema = types.CreateImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createImageBuilderStreamingURL(input, options)
    return self:invokeOperation(input, {
        name = "CreateImageBuilderStreamingURL",
        input_schema = types.CreateImageBuilderStreamingURLInput,
        output_schema = types.CreateImageBuilderStreamingURLOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createImportedImage(input, options)
    return self:invokeOperation(input, {
        name = "CreateImportedImage",
        input_schema = types.CreateImportedImageInput,
        output_schema = types.CreateImportedImageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createStack(input, options)
    return self:invokeOperation(input, {
        name = "CreateStack",
        input_schema = types.CreateStackInput,
        output_schema = types.CreateStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createStreamingURL(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamingURL",
        input_schema = types.CreateStreamingURLInput,
        output_schema = types.CreateStreamingURLOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createThemeForStack(input, options)
    return self:invokeOperation(input, {
        name = "CreateThemeForStack",
        input_schema = types.CreateThemeForStackInput,
        output_schema = types.CreateThemeForStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUpdatedImage(input, options)
    return self:invokeOperation(input, {
        name = "CreateUpdatedImage",
        input_schema = types.CreateUpdatedImageInput,
        output_schema = types.CreateUpdatedImageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUsageReportSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateUsageReportSubscription",
        input_schema = types.CreateUsageReportSubscriptionInput,
        output_schema = types.CreateUsageReportSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAppBlock(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppBlock",
        input_schema = types.DeleteAppBlockInput,
        output_schema = types.DeleteAppBlockOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAppBlockBuilder(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppBlockBuilder",
        input_schema = types.DeleteAppBlockBuilderInput,
        output_schema = types.DeleteAppBlockBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDirectoryConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDirectoryConfig",
        input_schema = types.DeleteDirectoryConfigInput,
        output_schema = types.DeleteDirectoryConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEntitlement",
        input_schema = types.DeleteEntitlementInput,
        output_schema = types.DeleteEntitlementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFleet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleet",
        input_schema = types.DeleteFleetInput,
        output_schema = types.DeleteFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteImage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImage",
        input_schema = types.DeleteImageInput,
        output_schema = types.DeleteImageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImageBuilder",
        input_schema = types.DeleteImageBuilderInput,
        output_schema = types.DeleteImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteImagePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImagePermissions",
        input_schema = types.DeleteImagePermissionsInput,
        output_schema = types.DeleteImagePermissionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteStack(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStack",
        input_schema = types.DeleteStackInput,
        output_schema = types.DeleteStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteThemeForStack(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThemeForStack",
        input_schema = types.DeleteThemeForStackInput,
        output_schema = types.DeleteThemeForStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUsageReportSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUsageReportSubscription",
        input_schema = types.DeleteUsageReportSubscriptionInput,
        output_schema = types.DeleteUsageReportSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAppBlockBuilderAppBlockAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppBlockBuilderAppBlockAssociations",
        input_schema = types.DescribeAppBlockBuilderAppBlockAssociationsInput,
        output_schema = types.DescribeAppBlockBuilderAppBlockAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAppBlockBuilders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppBlockBuilders",
        input_schema = types.DescribeAppBlockBuildersInput,
        output_schema = types.DescribeAppBlockBuildersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAppBlocks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppBlocks",
        input_schema = types.DescribeAppBlocksInput,
        output_schema = types.DescribeAppBlocksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeApplicationFleetAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationFleetAssociations",
        input_schema = types.DescribeApplicationFleetAssociationsInput,
        output_schema = types.DescribeApplicationFleetAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeApplications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplications",
        input_schema = types.DescribeApplicationsInput,
        output_schema = types.DescribeApplicationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAppLicenseUsage(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppLicenseUsage",
        input_schema = types.DescribeAppLicenseUsageInput,
        output_schema = types.DescribeAppLicenseUsageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDirectoryConfigs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDirectoryConfigs",
        input_schema = types.DescribeDirectoryConfigsInput,
        output_schema = types.DescribeDirectoryConfigsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEntitlements(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEntitlements",
        input_schema = types.DescribeEntitlementsInput,
        output_schema = types.DescribeEntitlementsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFleets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleets",
        input_schema = types.DescribeFleetsInput,
        output_schema = types.DescribeFleetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeImageBuilders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageBuilders",
        input_schema = types.DescribeImageBuildersInput,
        output_schema = types.DescribeImageBuildersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeImagePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImagePermissions",
        input_schema = types.DescribeImagePermissionsInput,
        output_schema = types.DescribeImagePermissionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeImages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImages",
        input_schema = types.DescribeImagesInput,
        output_schema = types.DescribeImagesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSessions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSessions",
        input_schema = types.DescribeSessionsInput,
        output_schema = types.DescribeSessionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSoftwareAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSoftwareAssociations",
        input_schema = types.DescribeSoftwareAssociationsInput,
        output_schema = types.DescribeSoftwareAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStacks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStacks",
        input_schema = types.DescribeStacksInput,
        output_schema = types.DescribeStacksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeThemeForStack(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThemeForStack",
        input_schema = types.DescribeThemeForStackInput,
        output_schema = types.DescribeThemeForStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUsageReportSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUsageReportSubscriptions",
        input_schema = types.DescribeUsageReportSubscriptionsInput,
        output_schema = types.DescribeUsageReportSubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUsers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUsers",
        input_schema = types.DescribeUsersInput,
        output_schema = types.DescribeUsersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUserStackAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUserStackAssociations",
        input_schema = types.DescribeUserStackAssociationsInput,
        output_schema = types.DescribeUserStackAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableUser(input, options)
    return self:invokeOperation(input, {
        name = "DisableUser",
        input_schema = types.DisableUserInput,
        output_schema = types.DisableUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateAppBlockBuilderAppBlock(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAppBlockBuilderAppBlock",
        input_schema = types.DisassociateAppBlockBuilderAppBlockInput,
        output_schema = types.DisassociateAppBlockBuilderAppBlockOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateApplicationFleet(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateApplicationFleet",
        input_schema = types.DisassociateApplicationFleetInput,
        output_schema = types.DisassociateApplicationFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateApplicationFromEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateApplicationFromEntitlement",
        input_schema = types.DisassociateApplicationFromEntitlementInput,
        output_schema = types.DisassociateApplicationFromEntitlementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateFleet(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFleet",
        input_schema = types.DisassociateFleetInput,
        output_schema = types.DisassociateFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateSoftwareFromImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSoftwareFromImageBuilder",
        input_schema = types.DisassociateSoftwareFromImageBuilderInput,
        output_schema = types.DisassociateSoftwareFromImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:drainSessionInstance(input, options)
    return self:invokeOperation(input, {
        name = "DrainSessionInstance",
        input_schema = types.DrainSessionInstanceInput,
        output_schema = types.DrainSessionInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableUser(input, options)
    return self:invokeOperation(input, {
        name = "EnableUser",
        input_schema = types.EnableUserInput,
        output_schema = types.EnableUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:expireSession(input, options)
    return self:invokeOperation(input, {
        name = "ExpireSession",
        input_schema = types.ExpireSessionInput,
        output_schema = types.ExpireSessionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getExportImageTask(input, options)
    return self:invokeOperation(input, {
        name = "GetExportImageTask",
        input_schema = types.GetExportImageTaskInput,
        output_schema = types.GetExportImageTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAssociatedFleets(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedFleets",
        input_schema = types.ListAssociatedFleetsInput,
        output_schema = types.ListAssociatedFleetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAssociatedStacks(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedStacks",
        input_schema = types.ListAssociatedStacksInput,
        output_schema = types.ListAssociatedStacksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEntitledApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListEntitledApplications",
        input_schema = types.ListEntitledApplicationsInput,
        output_schema = types.ListEntitledApplicationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listExportImageTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListExportImageTasks",
        input_schema = types.ListExportImageTasksInput,
        output_schema = types.ListExportImageTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startAppBlockBuilder(input, options)
    return self:invokeOperation(input, {
        name = "StartAppBlockBuilder",
        input_schema = types.StartAppBlockBuilderInput,
        output_schema = types.StartAppBlockBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startFleet(input, options)
    return self:invokeOperation(input, {
        name = "StartFleet",
        input_schema = types.StartFleetInput,
        output_schema = types.StartFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "StartImageBuilder",
        input_schema = types.StartImageBuilderInput,
        output_schema = types.StartImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startSoftwareDeploymentToImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "StartSoftwareDeploymentToImageBuilder",
        input_schema = types.StartSoftwareDeploymentToImageBuilderInput,
        output_schema = types.StartSoftwareDeploymentToImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopAppBlockBuilder(input, options)
    return self:invokeOperation(input, {
        name = "StopAppBlockBuilder",
        input_schema = types.StopAppBlockBuilderInput,
        output_schema = types.StopAppBlockBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopFleet(input, options)
    return self:invokeOperation(input, {
        name = "StopFleet",
        input_schema = types.StopFleetInput,
        output_schema = types.StopFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "StopImageBuilder",
        input_schema = types.StopImageBuilderInput,
        output_schema = types.StopImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAppBlockBuilder(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppBlockBuilder",
        input_schema = types.UpdateAppBlockBuilderInput,
        output_schema = types.UpdateAppBlockBuilderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDirectoryConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDirectoryConfig",
        input_schema = types.UpdateDirectoryConfigInput,
        output_schema = types.UpdateDirectoryConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEntitlement",
        input_schema = types.UpdateEntitlementInput,
        output_schema = types.UpdateEntitlementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFleet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleet",
        input_schema = types.UpdateFleetInput,
        output_schema = types.UpdateFleetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateImagePermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateImagePermissions",
        input_schema = types.UpdateImagePermissionsInput,
        output_schema = types.UpdateImagePermissionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateStack(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStack",
        input_schema = types.UpdateStackInput,
        output_schema = types.UpdateStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateThemeForStack(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThemeForStack",
        input_schema = types.UpdateThemeForStackInput,
        output_schema = types.UpdateThemeForStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
