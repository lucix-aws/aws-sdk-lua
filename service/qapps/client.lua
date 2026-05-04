local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("qapps.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("qapps.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "QAppsService"
    cfg.signing_name = "qappsservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:associateLibraryItemReview(input, options)
    return self:invokeOperation(input, {
        name = "AssociateLibraryItemReview",
        input_schema = types.AssociateLibraryItemReviewInput,
        output_schema = types.AssociateLibraryItemReviewOutput,
        http_method = "POST",
        http_path = "/catalog.associateItemRating",
    }, options)
end

function Client:associateQAppWithUser(input, options)
    return self:invokeOperation(input, {
        name = "AssociateQAppWithUser",
        input_schema = types.AssociateQAppWithUserInput,
        output_schema = types.AssociateQAppWithUserOutput,
        http_method = "POST",
        http_path = "/apps.install",
    }, options)
end

function Client:batchCreateCategory(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateCategory",
        input_schema = types.BatchCreateCategoryInput,
        output_schema = types.BatchCreateCategoryOutput,
        http_method = "POST",
        http_path = "/catalog.createCategories",
    }, options)
end

function Client:batchDeleteCategory(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteCategory",
        input_schema = types.BatchDeleteCategoryInput,
        output_schema = types.BatchDeleteCategoryOutput,
        http_method = "POST",
        http_path = "/catalog.deleteCategories",
    }, options)
end

function Client:batchUpdateCategory(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateCategory",
        input_schema = types.BatchUpdateCategoryInput,
        output_schema = types.BatchUpdateCategoryOutput,
        http_method = "POST",
        http_path = "/catalog.updateCategories",
    }, options)
end

function Client:createLibraryItem(input, options)
    return self:invokeOperation(input, {
        name = "CreateLibraryItem",
        input_schema = types.CreateLibraryItemInput,
        output_schema = types.CreateLibraryItemOutput,
        http_method = "POST",
        http_path = "/catalog.createItem",
    }, options)
end

function Client:createPresignedUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreatePresignedUrl",
        input_schema = types.CreatePresignedUrlInput,
        output_schema = types.CreatePresignedUrlOutput,
        http_method = "POST",
        http_path = "/apps.createPresignedUrl",
    }, options)
end

function Client:createQApp(input, options)
    return self:invokeOperation(input, {
        name = "CreateQApp",
        input_schema = types.CreateQAppInput,
        output_schema = types.CreateQAppOutput,
        http_method = "POST",
        http_path = "/apps.create",
    }, options)
end

function Client:deleteLibraryItem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLibraryItem",
        input_schema = types.DeleteLibraryItemInput,
        output_schema = types.DeleteLibraryItemOutput,
        http_method = "POST",
        http_path = "/catalog.deleteItem",
    }, options)
end

function Client:deleteQApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQApp",
        input_schema = types.DeleteQAppInput,
        output_schema = types.DeleteQAppOutput,
        http_method = "POST",
        http_path = "/apps.delete",
    }, options)
end

function Client:describeQAppPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQAppPermissions",
        input_schema = types.DescribeQAppPermissionsInput,
        output_schema = types.DescribeQAppPermissionsOutput,
        http_method = "GET",
        http_path = "/apps.describeQAppPermissions",
    }, options)
end

function Client:disassociateLibraryItemReview(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateLibraryItemReview",
        input_schema = types.DisassociateLibraryItemReviewInput,
        output_schema = types.DisassociateLibraryItemReviewOutput,
        http_method = "POST",
        http_path = "/catalog.disassociateItemRating",
    }, options)
end

function Client:disassociateQAppFromUser(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateQAppFromUser",
        input_schema = types.DisassociateQAppFromUserInput,
        output_schema = types.DisassociateQAppFromUserOutput,
        http_method = "POST",
        http_path = "/apps.uninstall",
    }, options)
end

function Client:exportQAppSessionData(input, options)
    return self:invokeOperation(input, {
        name = "ExportQAppSessionData",
        input_schema = types.ExportQAppSessionDataInput,
        output_schema = types.ExportQAppSessionDataOutput,
        http_method = "POST",
        http_path = "/runtime.exportQAppSessionData",
    }, options)
end

function Client:getLibraryItem(input, options)
    return self:invokeOperation(input, {
        name = "GetLibraryItem",
        input_schema = types.GetLibraryItemInput,
        output_schema = types.GetLibraryItemOutput,
        http_method = "GET",
        http_path = "/catalog.getItem",
    }, options)
end

function Client:getQApp(input, options)
    return self:invokeOperation(input, {
        name = "GetQApp",
        input_schema = types.GetQAppInput,
        output_schema = types.GetQAppOutput,
        http_method = "GET",
        http_path = "/apps.get",
    }, options)
end

function Client:getQAppSession(input, options)
    return self:invokeOperation(input, {
        name = "GetQAppSession",
        input_schema = types.GetQAppSessionInput,
        output_schema = types.GetQAppSessionOutput,
        http_method = "GET",
        http_path = "/runtime.getQAppSession",
    }, options)
end

function Client:getQAppSessionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetQAppSessionMetadata",
        input_schema = types.GetQAppSessionMetadataInput,
        output_schema = types.GetQAppSessionMetadataOutput,
        http_method = "GET",
        http_path = "/runtime.getQAppSessionMetadata",
    }, options)
end

function Client:importDocument(input, options)
    return self:invokeOperation(input, {
        name = "ImportDocument",
        input_schema = types.ImportDocumentInput,
        output_schema = types.ImportDocumentOutput,
        http_method = "POST",
        http_path = "/apps.importDocument",
    }, options)
end

function Client:listCategories(input, options)
    return self:invokeOperation(input, {
        name = "ListCategories",
        input_schema = types.ListCategoriesInput,
        output_schema = types.ListCategoriesOutput,
        http_method = "GET",
        http_path = "/catalog.listCategories",
    }, options)
end

function Client:listLibraryItems(input, options)
    return self:invokeOperation(input, {
        name = "ListLibraryItems",
        input_schema = types.ListLibraryItemsInput,
        output_schema = types.ListLibraryItemsOutput,
        http_method = "GET",
        http_path = "/catalog.list",
    }, options)
end

function Client:listQApps(input, options)
    return self:invokeOperation(input, {
        name = "ListQApps",
        input_schema = types.ListQAppsInput,
        output_schema = types.ListQAppsOutput,
        http_method = "GET",
        http_path = "/apps.list",
    }, options)
end

function Client:listQAppSessionData(input, options)
    return self:invokeOperation(input, {
        name = "ListQAppSessionData",
        input_schema = types.ListQAppSessionDataInput,
        output_schema = types.ListQAppSessionDataOutput,
        http_method = "GET",
        http_path = "/runtime.listQAppSessionData",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceARN}",
    }, options)
end

function Client:predictQApp(input, options)
    return self:invokeOperation(input, {
        name = "PredictQApp",
        input_schema = types.PredictQAppInput,
        output_schema = types.PredictQAppOutput,
        http_method = "POST",
        http_path = "/apps.predictQApp",
    }, options)
end

function Client:startQAppSession(input, options)
    return self:invokeOperation(input, {
        name = "StartQAppSession",
        input_schema = types.StartQAppSessionInput,
        output_schema = types.StartQAppSessionOutput,
        http_method = "POST",
        http_path = "/runtime.startQAppSession",
    }, options)
end

function Client:stopQAppSession(input, options)
    return self:invokeOperation(input, {
        name = "StopQAppSession",
        input_schema = types.StopQAppSessionInput,
        output_schema = types.StopQAppSessionOutput,
        http_method = "POST",
        http_path = "/runtime.deleteMiniAppRun",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceARN}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceARN}",
    }, options)
end

function Client:updateLibraryItem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLibraryItem",
        input_schema = types.UpdateLibraryItemInput,
        output_schema = types.UpdateLibraryItemOutput,
        http_method = "POST",
        http_path = "/catalog.updateItem",
    }, options)
end

function Client:updateLibraryItemMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLibraryItemMetadata",
        input_schema = types.UpdateLibraryItemMetadataInput,
        output_schema = types.UpdateLibraryItemMetadataOutput,
        http_method = "POST",
        http_path = "/catalog.updateItemMetadata",
    }, options)
end

function Client:updateQApp(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQApp",
        input_schema = types.UpdateQAppInput,
        output_schema = types.UpdateQAppOutput,
        http_method = "POST",
        http_path = "/apps.update",
    }, options)
end

function Client:updateQAppPermissions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQAppPermissions",
        input_schema = types.UpdateQAppPermissionsInput,
        output_schema = types.UpdateQAppPermissionsOutput,
        http_method = "POST",
        http_path = "/apps.updateQAppPermissions",
    }, options)
end

function Client:updateQAppSession(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQAppSession",
        input_schema = types.UpdateQAppSessionInput,
        output_schema = types.UpdateQAppSessionOutput,
        http_method = "POST",
        http_path = "/runtime.updateQAppSession",
    }, options)
end

function Client:updateQAppSessionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQAppSessionMetadata",
        input_schema = types.UpdateQAppSessionMetadataInput,
        output_schema = types.UpdateQAppSessionMetadataOutput,
        http_method = "POST",
        http_path = "/runtime.updateQAppSessionMetadata",
    }, options)
end

return M
