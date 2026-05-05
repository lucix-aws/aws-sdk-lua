local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("qapps.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("qapps.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "QAppsService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "qapps", signing_region = cfg.region } }
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

function Client:associateLibraryItemReview(input, options)
    return self:invokeOperation(input, {
        name = "AssociateLibraryItemReview",
        input_schema = schemas.AssociateLibraryItemReviewInput,
        output_schema = schemas.AssociateLibraryItemReviewOutput,
        http_method = "POST",
        http_path = "/catalog.associateItemRating",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateQAppWithUser(input, options)
    return self:invokeOperation(input, {
        name = "AssociateQAppWithUser",
        input_schema = schemas.AssociateQAppWithUserInput,
        output_schema = schemas.AssociateQAppWithUserOutput,
        http_method = "POST",
        http_path = "/apps.install",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchCreateCategory(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateCategory",
        input_schema = schemas.BatchCreateCategoryInput,
        output_schema = schemas.BatchCreateCategoryOutput,
        http_method = "POST",
        http_path = "/catalog.createCategories",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteCategory(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteCategory",
        input_schema = schemas.BatchDeleteCategoryInput,
        output_schema = schemas.BatchDeleteCategoryOutput,
        http_method = "POST",
        http_path = "/catalog.deleteCategories",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateCategory(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateCategory",
        input_schema = schemas.BatchUpdateCategoryInput,
        output_schema = schemas.BatchUpdateCategoryOutput,
        http_method = "POST",
        http_path = "/catalog.updateCategories",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLibraryItem(input, options)
    return self:invokeOperation(input, {
        name = "CreateLibraryItem",
        input_schema = schemas.CreateLibraryItemInput,
        output_schema = schemas.CreateLibraryItemOutput,
        http_method = "POST",
        http_path = "/catalog.createItem",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPresignedUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreatePresignedUrl",
        input_schema = schemas.CreatePresignedUrlInput,
        output_schema = schemas.CreatePresignedUrlOutput,
        http_method = "POST",
        http_path = "/apps.createPresignedUrl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQApp(input, options)
    return self:invokeOperation(input, {
        name = "CreateQApp",
        input_schema = schemas.CreateQAppInput,
        output_schema = schemas.CreateQAppOutput,
        http_method = "POST",
        http_path = "/apps.create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLibraryItem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLibraryItem",
        input_schema = schemas.DeleteLibraryItemInput,
        output_schema = schemas.DeleteLibraryItemOutput,
        http_method = "POST",
        http_path = "/catalog.deleteItem",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQApp",
        input_schema = schemas.DeleteQAppInput,
        output_schema = schemas.DeleteQAppOutput,
        http_method = "POST",
        http_path = "/apps.delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeQAppPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQAppPermissions",
        input_schema = schemas.DescribeQAppPermissionsInput,
        output_schema = schemas.DescribeQAppPermissionsOutput,
        http_method = "GET",
        http_path = "/apps.describeQAppPermissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateLibraryItemReview(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateLibraryItemReview",
        input_schema = schemas.DisassociateLibraryItemReviewInput,
        output_schema = schemas.DisassociateLibraryItemReviewOutput,
        http_method = "POST",
        http_path = "/catalog.disassociateItemRating",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateQAppFromUser(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateQAppFromUser",
        input_schema = schemas.DisassociateQAppFromUserInput,
        output_schema = schemas.DisassociateQAppFromUserOutput,
        http_method = "POST",
        http_path = "/apps.uninstall",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportQAppSessionData(input, options)
    return self:invokeOperation(input, {
        name = "ExportQAppSessionData",
        input_schema = schemas.ExportQAppSessionDataInput,
        output_schema = schemas.ExportQAppSessionDataOutput,
        http_method = "POST",
        http_path = "/runtime.exportQAppSessionData",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLibraryItem(input, options)
    return self:invokeOperation(input, {
        name = "GetLibraryItem",
        input_schema = schemas.GetLibraryItemInput,
        output_schema = schemas.GetLibraryItemOutput,
        http_method = "GET",
        http_path = "/catalog.getItem",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQApp(input, options)
    return self:invokeOperation(input, {
        name = "GetQApp",
        input_schema = schemas.GetQAppInput,
        output_schema = schemas.GetQAppOutput,
        http_method = "GET",
        http_path = "/apps.get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQAppSession(input, options)
    return self:invokeOperation(input, {
        name = "GetQAppSession",
        input_schema = schemas.GetQAppSessionInput,
        output_schema = schemas.GetQAppSessionOutput,
        http_method = "GET",
        http_path = "/runtime.getQAppSession",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQAppSessionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetQAppSessionMetadata",
        input_schema = schemas.GetQAppSessionMetadataInput,
        output_schema = schemas.GetQAppSessionMetadataOutput,
        http_method = "GET",
        http_path = "/runtime.getQAppSessionMetadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importDocument(input, options)
    return self:invokeOperation(input, {
        name = "ImportDocument",
        input_schema = schemas.ImportDocumentInput,
        output_schema = schemas.ImportDocumentOutput,
        http_method = "POST",
        http_path = "/apps.importDocument",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCategories(input, options)
    return self:invokeOperation(input, {
        name = "ListCategories",
        input_schema = schemas.ListCategoriesInput,
        output_schema = schemas.ListCategoriesOutput,
        http_method = "GET",
        http_path = "/catalog.listCategories",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLibraryItems(input, options)
    return self:invokeOperation(input, {
        name = "ListLibraryItems",
        input_schema = schemas.ListLibraryItemsInput,
        output_schema = schemas.ListLibraryItemsOutput,
        http_method = "GET",
        http_path = "/catalog.list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQApps(input, options)
    return self:invokeOperation(input, {
        name = "ListQApps",
        input_schema = schemas.ListQAppsInput,
        output_schema = schemas.ListQAppsOutput,
        http_method = "GET",
        http_path = "/apps.list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQAppSessionData(input, options)
    return self:invokeOperation(input, {
        name = "ListQAppSessionData",
        input_schema = schemas.ListQAppSessionDataInput,
        output_schema = schemas.ListQAppSessionDataOutput,
        http_method = "GET",
        http_path = "/runtime.listQAppSessionData",
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
        http_path = "/tags/{resourceARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:predictQApp(input, options)
    return self:invokeOperation(input, {
        name = "PredictQApp",
        input_schema = schemas.PredictQAppInput,
        output_schema = schemas.PredictQAppOutput,
        http_method = "POST",
        http_path = "/apps.predictQApp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startQAppSession(input, options)
    return self:invokeOperation(input, {
        name = "StartQAppSession",
        input_schema = schemas.StartQAppSessionInput,
        output_schema = schemas.StartQAppSessionOutput,
        http_method = "POST",
        http_path = "/runtime.startQAppSession",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopQAppSession(input, options)
    return self:invokeOperation(input, {
        name = "StopQAppSession",
        input_schema = schemas.StopQAppSessionInput,
        output_schema = schemas.StopQAppSessionOutput,
        http_method = "POST",
        http_path = "/runtime.deleteMiniAppRun",
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
        http_path = "/tags/{resourceARN}",
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
        http_path = "/tags/{resourceARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLibraryItem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLibraryItem",
        input_schema = schemas.UpdateLibraryItemInput,
        output_schema = schemas.UpdateLibraryItemOutput,
        http_method = "POST",
        http_path = "/catalog.updateItem",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLibraryItemMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLibraryItemMetadata",
        input_schema = schemas.UpdateLibraryItemMetadataInput,
        output_schema = schemas.UpdateLibraryItemMetadataOutput,
        http_method = "POST",
        http_path = "/catalog.updateItemMetadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQApp(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQApp",
        input_schema = schemas.UpdateQAppInput,
        output_schema = schemas.UpdateQAppOutput,
        http_method = "POST",
        http_path = "/apps.update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQAppPermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQAppPermissions",
        input_schema = schemas.UpdateQAppPermissionsInput,
        output_schema = schemas.UpdateQAppPermissionsOutput,
        http_method = "POST",
        http_path = "/apps.updateQAppPermissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQAppSession(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQAppSession",
        input_schema = schemas.UpdateQAppSessionInput,
        output_schema = schemas.UpdateQAppSessionOutput,
        http_method = "POST",
        http_path = "/runtime.updateQAppSession",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQAppSessionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQAppSessionMetadata",
        input_schema = schemas.UpdateQAppSessionMetadataInput,
        output_schema = schemas.UpdateQAppSessionMetadataOutput,
        http_method = "POST",
        http_path = "/runtime.updateQAppSessionMetadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
