local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("appstream.endpoint_rules")
local schemas = require("appstream.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PhotonAdminProxyService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "appstream", signing_region = cfg.region } }
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

function Client:associateAppBlockBuilderAppBlock(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAppBlockBuilderAppBlock",
        input_schema = schemas.AssociateAppBlockBuilderAppBlockInput,
        output_schema = schemas.AssociateAppBlockBuilderAppBlockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateApplicationFleet(input, options)
    return self:invokeOperation(input, {
        name = "AssociateApplicationFleet",
        input_schema = schemas.AssociateApplicationFleetInput,
        output_schema = schemas.AssociateApplicationFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateApplicationToEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "AssociateApplicationToEntitlement",
        input_schema = schemas.AssociateApplicationToEntitlementInput,
        output_schema = schemas.AssociateApplicationToEntitlementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateFleet(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFleet",
        input_schema = schemas.AssociateFleetInput,
        output_schema = schemas.AssociateFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSoftwareToImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSoftwareToImageBuilder",
        input_schema = schemas.AssociateSoftwareToImageBuilderInput,
        output_schema = schemas.AssociateSoftwareToImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchAssociateUserStack(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateUserStack",
        input_schema = schemas.BatchAssociateUserStackInput,
        output_schema = schemas.BatchAssociateUserStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDisassociateUserStack(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateUserStack",
        input_schema = schemas.BatchDisassociateUserStackInput,
        output_schema = schemas.BatchDisassociateUserStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyImage(input, options)
    return self:invokeOperation(input, {
        name = "CopyImage",
        input_schema = schemas.CopyImageInput,
        output_schema = schemas.CopyImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAppBlock(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppBlock",
        input_schema = schemas.CreateAppBlockInput,
        output_schema = schemas.CreateAppBlockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAppBlockBuilder(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppBlockBuilder",
        input_schema = schemas.CreateAppBlockBuilderInput,
        output_schema = schemas.CreateAppBlockBuilderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAppBlockBuilderStreamingURL(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppBlockBuilderStreamingURL",
        input_schema = schemas.CreateAppBlockBuilderStreamingURLInput,
        output_schema = schemas.CreateAppBlockBuilderStreamingURLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = schemas.CreateApplicationInput,
        output_schema = schemas.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDirectoryConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateDirectoryConfig",
        input_schema = schemas.CreateDirectoryConfigInput,
        output_schema = schemas.CreateDirectoryConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "CreateEntitlement",
        input_schema = schemas.CreateEntitlementInput,
        output_schema = schemas.CreateEntitlementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExportImageTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateExportImageTask",
        input_schema = schemas.CreateExportImageTaskInput,
        output_schema = schemas.CreateExportImageTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleet",
        input_schema = schemas.CreateFleetInput,
        output_schema = schemas.CreateFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "CreateImageBuilder",
        input_schema = schemas.CreateImageBuilderInput,
        output_schema = schemas.CreateImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImageBuilderStreamingURL(input, options)
    return self:invokeOperation(input, {
        name = "CreateImageBuilderStreamingURL",
        input_schema = schemas.CreateImageBuilderStreamingURLInput,
        output_schema = schemas.CreateImageBuilderStreamingURLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImportedImage(input, options)
    return self:invokeOperation(input, {
        name = "CreateImportedImage",
        input_schema = schemas.CreateImportedImageInput,
        output_schema = schemas.CreateImportedImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStack(input, options)
    return self:invokeOperation(input, {
        name = "CreateStack",
        input_schema = schemas.CreateStackInput,
        output_schema = schemas.CreateStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStreamingURL(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamingURL",
        input_schema = schemas.CreateStreamingURLInput,
        output_schema = schemas.CreateStreamingURLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createThemeForStack(input, options)
    return self:invokeOperation(input, {
        name = "CreateThemeForStack",
        input_schema = schemas.CreateThemeForStackInput,
        output_schema = schemas.CreateThemeForStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUpdatedImage(input, options)
    return self:invokeOperation(input, {
        name = "CreateUpdatedImage",
        input_schema = schemas.CreateUpdatedImageInput,
        output_schema = schemas.CreateUpdatedImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUsageReportSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateUsageReportSubscription",
        input_schema = schemas.CreateUsageReportSubscriptionInput,
        output_schema = schemas.CreateUsageReportSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = schemas.CreateUserInput,
        output_schema = schemas.CreateUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAppBlock(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppBlock",
        input_schema = schemas.DeleteAppBlockInput,
        output_schema = schemas.DeleteAppBlockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAppBlockBuilder(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppBlockBuilder",
        input_schema = schemas.DeleteAppBlockBuilderInput,
        output_schema = schemas.DeleteAppBlockBuilderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = schemas.DeleteApplicationInput,
        output_schema = schemas.DeleteApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDirectoryConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDirectoryConfig",
        input_schema = schemas.DeleteDirectoryConfigInput,
        output_schema = schemas.DeleteDirectoryConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEntitlement",
        input_schema = schemas.DeleteEntitlementInput,
        output_schema = schemas.DeleteEntitlementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFleet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleet",
        input_schema = schemas.DeleteFleetInput,
        output_schema = schemas.DeleteFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImage",
        input_schema = schemas.DeleteImageInput,
        output_schema = schemas.DeleteImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImageBuilder",
        input_schema = schemas.DeleteImageBuilderInput,
        output_schema = schemas.DeleteImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImagePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImagePermissions",
        input_schema = schemas.DeleteImagePermissionsInput,
        output_schema = schemas.DeleteImagePermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStack(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStack",
        input_schema = schemas.DeleteStackInput,
        output_schema = schemas.DeleteStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteThemeForStack(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThemeForStack",
        input_schema = schemas.DeleteThemeForStackInput,
        output_schema = schemas.DeleteThemeForStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUsageReportSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUsageReportSubscription",
        input_schema = schemas.DeleteUsageReportSubscriptionInput,
        output_schema = schemas.DeleteUsageReportSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAppBlockBuilderAppBlockAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppBlockBuilderAppBlockAssociations",
        input_schema = schemas.DescribeAppBlockBuilderAppBlockAssociationsInput,
        output_schema = schemas.DescribeAppBlockBuilderAppBlockAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAppBlockBuilders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppBlockBuilders",
        input_schema = schemas.DescribeAppBlockBuildersInput,
        output_schema = schemas.DescribeAppBlockBuildersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAppBlocks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppBlocks",
        input_schema = schemas.DescribeAppBlocksInput,
        output_schema = schemas.DescribeAppBlocksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicationFleetAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationFleetAssociations",
        input_schema = schemas.DescribeApplicationFleetAssociationsInput,
        output_schema = schemas.DescribeApplicationFleetAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplications",
        input_schema = schemas.DescribeApplicationsInput,
        output_schema = schemas.DescribeApplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAppLicenseUsage(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppLicenseUsage",
        input_schema = schemas.DescribeAppLicenseUsageInput,
        output_schema = schemas.DescribeAppLicenseUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDirectoryConfigs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDirectoryConfigs",
        input_schema = schemas.DescribeDirectoryConfigsInput,
        output_schema = schemas.DescribeDirectoryConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEntitlements(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEntitlements",
        input_schema = schemas.DescribeEntitlementsInput,
        output_schema = schemas.DescribeEntitlementsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleets",
        input_schema = schemas.DescribeFleetsInput,
        output_schema = schemas.DescribeFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImageBuilders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageBuilders",
        input_schema = schemas.DescribeImageBuildersInput,
        output_schema = schemas.DescribeImageBuildersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImagePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImagePermissions",
        input_schema = schemas.DescribeImagePermissionsInput,
        output_schema = schemas.DescribeImagePermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImages",
        input_schema = schemas.DescribeImagesInput,
        output_schema = schemas.DescribeImagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSessions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSessions",
        input_schema = schemas.DescribeSessionsInput,
        output_schema = schemas.DescribeSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSoftwareAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSoftwareAssociations",
        input_schema = schemas.DescribeSoftwareAssociationsInput,
        output_schema = schemas.DescribeSoftwareAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStacks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStacks",
        input_schema = schemas.DescribeStacksInput,
        output_schema = schemas.DescribeStacksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeThemeForStack(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThemeForStack",
        input_schema = schemas.DescribeThemeForStackInput,
        output_schema = schemas.DescribeThemeForStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUsageReportSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUsageReportSubscriptions",
        input_schema = schemas.DescribeUsageReportSubscriptionsInput,
        output_schema = schemas.DescribeUsageReportSubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUsers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUsers",
        input_schema = schemas.DescribeUsersInput,
        output_schema = schemas.DescribeUsersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUserStackAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUserStackAssociations",
        input_schema = schemas.DescribeUserStackAssociationsInput,
        output_schema = schemas.DescribeUserStackAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableUser(input, options)
    return self:invokeOperation(input, {
        name = "DisableUser",
        input_schema = schemas.DisableUserInput,
        output_schema = schemas.DisableUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateAppBlockBuilderAppBlock(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAppBlockBuilderAppBlock",
        input_schema = schemas.DisassociateAppBlockBuilderAppBlockInput,
        output_schema = schemas.DisassociateAppBlockBuilderAppBlockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateApplicationFleet(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateApplicationFleet",
        input_schema = schemas.DisassociateApplicationFleetInput,
        output_schema = schemas.DisassociateApplicationFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateApplicationFromEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateApplicationFromEntitlement",
        input_schema = schemas.DisassociateApplicationFromEntitlementInput,
        output_schema = schemas.DisassociateApplicationFromEntitlementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateFleet(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFleet",
        input_schema = schemas.DisassociateFleetInput,
        output_schema = schemas.DisassociateFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSoftwareFromImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSoftwareFromImageBuilder",
        input_schema = schemas.DisassociateSoftwareFromImageBuilderInput,
        output_schema = schemas.DisassociateSoftwareFromImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:drainSessionInstance(input, options)
    return self:invokeOperation(input, {
        name = "DrainSessionInstance",
        input_schema = schemas.DrainSessionInstanceInput,
        output_schema = schemas.DrainSessionInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableUser(input, options)
    return self:invokeOperation(input, {
        name = "EnableUser",
        input_schema = schemas.EnableUserInput,
        output_schema = schemas.EnableUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:expireSession(input, options)
    return self:invokeOperation(input, {
        name = "ExpireSession",
        input_schema = schemas.ExpireSessionInput,
        output_schema = schemas.ExpireSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExportImageTask(input, options)
    return self:invokeOperation(input, {
        name = "GetExportImageTask",
        input_schema = schemas.GetExportImageTaskInput,
        output_schema = schemas.GetExportImageTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociatedFleets(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedFleets",
        input_schema = schemas.ListAssociatedFleetsInput,
        output_schema = schemas.ListAssociatedFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociatedStacks(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedStacks",
        input_schema = schemas.ListAssociatedStacksInput,
        output_schema = schemas.ListAssociatedStacksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEntitledApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListEntitledApplications",
        input_schema = schemas.ListEntitledApplicationsInput,
        output_schema = schemas.ListEntitledApplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExportImageTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListExportImageTasks",
        input_schema = schemas.ListExportImageTasksInput,
        output_schema = schemas.ListExportImageTasksOutput,
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

function Client:startAppBlockBuilder(input, options)
    return self:invokeOperation(input, {
        name = "StartAppBlockBuilder",
        input_schema = schemas.StartAppBlockBuilderInput,
        output_schema = schemas.StartAppBlockBuilderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFleet(input, options)
    return self:invokeOperation(input, {
        name = "StartFleet",
        input_schema = schemas.StartFleetInput,
        output_schema = schemas.StartFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "StartImageBuilder",
        input_schema = schemas.StartImageBuilderInput,
        output_schema = schemas.StartImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSoftwareDeploymentToImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "StartSoftwareDeploymentToImageBuilder",
        input_schema = schemas.StartSoftwareDeploymentToImageBuilderInput,
        output_schema = schemas.StartSoftwareDeploymentToImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopAppBlockBuilder(input, options)
    return self:invokeOperation(input, {
        name = "StopAppBlockBuilder",
        input_schema = schemas.StopAppBlockBuilderInput,
        output_schema = schemas.StopAppBlockBuilderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopFleet(input, options)
    return self:invokeOperation(input, {
        name = "StopFleet",
        input_schema = schemas.StopFleetInput,
        output_schema = schemas.StopFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopImageBuilder(input, options)
    return self:invokeOperation(input, {
        name = "StopImageBuilder",
        input_schema = schemas.StopImageBuilderInput,
        output_schema = schemas.StopImageBuilderOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAppBlockBuilder(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppBlockBuilder",
        input_schema = schemas.UpdateAppBlockBuilderInput,
        output_schema = schemas.UpdateAppBlockBuilderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = schemas.UpdateApplicationInput,
        output_schema = schemas.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDirectoryConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDirectoryConfig",
        input_schema = schemas.UpdateDirectoryConfigInput,
        output_schema = schemas.UpdateDirectoryConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEntitlement",
        input_schema = schemas.UpdateEntitlementInput,
        output_schema = schemas.UpdateEntitlementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFleet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleet",
        input_schema = schemas.UpdateFleetInput,
        output_schema = schemas.UpdateFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateImagePermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateImagePermissions",
        input_schema = schemas.UpdateImagePermissionsInput,
        output_schema = schemas.UpdateImagePermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStack(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStack",
        input_schema = schemas.UpdateStackInput,
        output_schema = schemas.UpdateStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThemeForStack(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThemeForStack",
        input_schema = schemas.UpdateThemeForStackInput,
        output_schema = schemas.UpdateThemeForStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
