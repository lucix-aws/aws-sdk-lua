local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("outposts.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("outposts.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "OutpostsOlafService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "outposts", signing_region = cfg.region } }
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

function Client:cancelCapacityTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelCapacityTask",
        input_schema = types.CancelCapacityTaskInput,
        output_schema = types.CancelCapacityTaskOutput,
        http_method = "POST",
        http_path = "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelOrder(input, options)
    return self:invokeOperation(input, {
        name = "CancelOrder",
        input_schema = types.CancelOrderInput,
        output_schema = types.CancelOrderOutput,
        http_method = "POST",
        http_path = "/orders/{OrderId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOrder(input, options)
    return self:invokeOperation(input, {
        name = "CreateOrder",
        input_schema = types.CreateOrderInput,
        output_schema = types.CreateOrderOutput,
        http_method = "POST",
        http_path = "/orders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOutpost(input, options)
    return self:invokeOperation(input, {
        name = "CreateOutpost",
        input_schema = types.CreateOutpostInput,
        output_schema = types.CreateOutpostOutput,
        http_method = "POST",
        http_path = "/outposts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRenewal(input, options)
    return self:invokeOperation(input, {
        name = "CreateRenewal",
        input_schema = types.CreateRenewalInput,
        output_schema = types.CreateRenewalOutput,
        http_method = "POST",
        http_path = "/renewals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSite(input, options)
    return self:invokeOperation(input, {
        name = "CreateSite",
        input_schema = types.CreateSiteInput,
        output_schema = types.CreateSiteOutput,
        http_method = "POST",
        http_path = "/sites",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOutpost(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOutpost",
        input_schema = types.DeleteOutpostInput,
        output_schema = types.DeleteOutpostOutput,
        http_method = "DELETE",
        http_path = "/outposts/{OutpostId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSite(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSite",
        input_schema = types.DeleteSiteInput,
        output_schema = types.DeleteSiteOutput,
        http_method = "DELETE",
        http_path = "/sites/{SiteId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCapacityTask(input, options)
    return self:invokeOperation(input, {
        name = "GetCapacityTask",
        input_schema = types.GetCapacityTaskInput,
        output_schema = types.GetCapacityTaskOutput,
        http_method = "GET",
        http_path = "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCatalogItem(input, options)
    return self:invokeOperation(input, {
        name = "GetCatalogItem",
        input_schema = types.GetCatalogItemInput,
        output_schema = types.GetCatalogItemOutput,
        http_method = "GET",
        http_path = "/catalog/item/{CatalogItemId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnection(input, options)
    return self:invokeOperation(input, {
        name = "GetConnection",
        input_schema = types.GetConnectionInput,
        output_schema = types.GetConnectionOutput,
        http_method = "GET",
        http_path = "/connections/{ConnectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOrder(input, options)
    return self:invokeOperation(input, {
        name = "GetOrder",
        input_schema = types.GetOrderInput,
        output_schema = types.GetOrderOutput,
        http_method = "GET",
        http_path = "/orders/{OrderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOutpost(input, options)
    return self:invokeOperation(input, {
        name = "GetOutpost",
        input_schema = types.GetOutpostInput,
        output_schema = types.GetOutpostOutput,
        http_method = "GET",
        http_path = "/outposts/{OutpostId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOutpostBillingInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetOutpostBillingInformation",
        input_schema = types.GetOutpostBillingInformationInput,
        output_schema = types.GetOutpostBillingInformationOutput,
        http_method = "GET",
        http_path = "/outpost/{OutpostIdentifier}/billing-information",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOutpostInstanceTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetOutpostInstanceTypes",
        input_schema = types.GetOutpostInstanceTypesInput,
        output_schema = types.GetOutpostInstanceTypesOutput,
        http_method = "GET",
        http_path = "/outposts/{OutpostId}/instanceTypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOutpostSupportedInstanceTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetOutpostSupportedInstanceTypes",
        input_schema = types.GetOutpostSupportedInstanceTypesInput,
        output_schema = types.GetOutpostSupportedInstanceTypesOutput,
        http_method = "GET",
        http_path = "/outposts/{OutpostIdentifier}/supportedInstanceTypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRenewalPricing(input, options)
    return self:invokeOperation(input, {
        name = "GetRenewalPricing",
        input_schema = types.GetRenewalPricingInput,
        output_schema = types.GetRenewalPricingOutput,
        http_method = "GET",
        http_path = "/outpost/{OutpostIdentifier}/renewal-pricing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSite(input, options)
    return self:invokeOperation(input, {
        name = "GetSite",
        input_schema = types.GetSiteInput,
        output_schema = types.GetSiteOutput,
        http_method = "GET",
        http_path = "/sites/{SiteId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSiteAddress(input, options)
    return self:invokeOperation(input, {
        name = "GetSiteAddress",
        input_schema = types.GetSiteAddressInput,
        output_schema = types.GetSiteAddressOutput,
        http_method = "GET",
        http_path = "/sites/{SiteId}/address",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssetInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetInstances",
        input_schema = types.ListAssetInstancesInput,
        output_schema = types.ListAssetInstancesOutput,
        http_method = "GET",
        http_path = "/outposts/{OutpostIdentifier}/assetInstances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListAssets",
        input_schema = types.ListAssetsInput,
        output_schema = types.ListAssetsOutput,
        http_method = "GET",
        http_path = "/outposts/{OutpostIdentifier}/assets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBlockingInstancesForCapacityTask(input, options)
    return self:invokeOperation(input, {
        name = "ListBlockingInstancesForCapacityTask",
        input_schema = types.ListBlockingInstancesForCapacityTaskInput,
        output_schema = types.ListBlockingInstancesForCapacityTaskOutput,
        http_method = "GET",
        http_path = "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}/blockingInstances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCapacityTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListCapacityTasks",
        input_schema = types.ListCapacityTasksInput,
        output_schema = types.ListCapacityTasksOutput,
        http_method = "GET",
        http_path = "/capacity/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCatalogItems(input, options)
    return self:invokeOperation(input, {
        name = "ListCatalogItems",
        input_schema = types.ListCatalogItemsInput,
        output_schema = types.ListCatalogItemsOutput,
        http_method = "GET",
        http_path = "/catalog/items",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrders(input, options)
    return self:invokeOperation(input, {
        name = "ListOrders",
        input_schema = types.ListOrdersInput,
        output_schema = types.ListOrdersOutput,
        http_method = "GET",
        http_path = "/list-orders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOutposts(input, options)
    return self:invokeOperation(input, {
        name = "ListOutposts",
        input_schema = types.ListOutpostsInput,
        output_schema = types.ListOutpostsOutput,
        http_method = "GET",
        http_path = "/outposts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSites(input, options)
    return self:invokeOperation(input, {
        name = "ListSites",
        input_schema = types.ListSitesInput,
        output_schema = types.ListSitesOutput,
        http_method = "GET",
        http_path = "/sites",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCapacityTask(input, options)
    return self:invokeOperation(input, {
        name = "StartCapacityTask",
        input_schema = types.StartCapacityTaskInput,
        output_schema = types.StartCapacityTaskOutput,
        http_method = "POST",
        http_path = "/outposts/{OutpostIdentifier}/capacity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startConnection(input, options)
    return self:invokeOperation(input, {
        name = "StartConnection",
        input_schema = types.StartConnectionInput,
        output_schema = types.StartConnectionOutput,
        http_method = "POST",
        http_path = "/connections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startOutpostDecommission(input, options)
    return self:invokeOperation(input, {
        name = "StartOutpostDecommission",
        input_schema = types.StartOutpostDecommissionInput,
        output_schema = types.StartOutpostDecommissionOutput,
        http_method = "POST",
        http_path = "/outposts/{OutpostIdentifier}/decommission",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOutpost(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOutpost",
        input_schema = types.UpdateOutpostInput,
        output_schema = types.UpdateOutpostOutput,
        http_method = "PATCH",
        http_path = "/outposts/{OutpostId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSite(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSite",
        input_schema = types.UpdateSiteInput,
        output_schema = types.UpdateSiteOutput,
        http_method = "PATCH",
        http_path = "/sites/{SiteId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSiteAddress(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSiteAddress",
        input_schema = types.UpdateSiteAddressInput,
        output_schema = types.UpdateSiteAddressOutput,
        http_method = "PUT",
        http_path = "/sites/{SiteId}/address",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSiteRackPhysicalProperties(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSiteRackPhysicalProperties",
        input_schema = types.UpdateSiteRackPhysicalPropertiesInput,
        output_schema = types.UpdateSiteRackPhysicalPropertiesOutput,
        http_method = "PATCH",
        http_path = "/sites/{SiteId}/rackPhysicalProperties",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
