local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotfleetwise.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("iotfleetwise.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IoTAutobahnControlPlane"
    cfg.signing_name = "iotfleetwise"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:associateVehicleFleet(input, options)
    return self:invokeOperation(input, {
        name = "AssociateVehicleFleet",
        input_schema = types.AssociateVehicleFleetInput,
        output_schema = types.AssociateVehicleFleetOutput,
        http_method = "PUT",
        http_path = "/vehicles/{vehicleName}/associate",
    }, options)
end

function Client:batchCreateVehicle(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateVehicle",
        input_schema = types.BatchCreateVehicleInput,
        output_schema = types.BatchCreateVehicleOutput,
        http_method = "POST",
        http_path = "/vehicles",
    }, options)
end

function Client:batchUpdateVehicle(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateVehicle",
        input_schema = types.BatchUpdateVehicleInput,
        output_schema = types.BatchUpdateVehicleOutput,
        http_method = "PUT",
        http_path = "/vehicles",
    }, options)
end

function Client:createCampaign(input, options)
    return self:invokeOperation(input, {
        name = "CreateCampaign",
        input_schema = types.CreateCampaignInput,
        output_schema = types.CreateCampaignOutput,
        http_method = "POST",
        http_path = "/campaigns/{name}",
    }, options)
end

function Client:createDecoderManifest(input, options)
    return self:invokeOperation(input, {
        name = "CreateDecoderManifest",
        input_schema = types.CreateDecoderManifestInput,
        output_schema = types.CreateDecoderManifestOutput,
        http_method = "POST",
        http_path = "/decoder-manifests/{name}",
    }, options)
end

function Client:createFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleet",
        input_schema = types.CreateFleetInput,
        output_schema = types.CreateFleetOutput,
        http_method = "POST",
        http_path = "/fleets/{fleetId}",
    }, options)
end

function Client:createModelManifest(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelManifest",
        input_schema = types.CreateModelManifestInput,
        output_schema = types.CreateModelManifestOutput,
        http_method = "POST",
        http_path = "/model-manifests/{name}",
    }, options)
end

function Client:createSignalCatalog(input, options)
    return self:invokeOperation(input, {
        name = "CreateSignalCatalog",
        input_schema = types.CreateSignalCatalogInput,
        output_schema = types.CreateSignalCatalogOutput,
        http_method = "POST",
        http_path = "/signal-catalogs/{name}",
    }, options)
end

function Client:createStateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateStateTemplate",
        input_schema = types.CreateStateTemplateInput,
        output_schema = types.CreateStateTemplateOutput,
        http_method = "POST",
        http_path = "/state-templates/{name}",
    }, options)
end

function Client:createVehicle(input, options)
    return self:invokeOperation(input, {
        name = "CreateVehicle",
        input_schema = types.CreateVehicleInput,
        output_schema = types.CreateVehicleOutput,
        http_method = "POST",
        http_path = "/vehicles/{vehicleName}",
    }, options)
end

function Client:deleteCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaign",
        input_schema = types.DeleteCampaignInput,
        output_schema = types.DeleteCampaignOutput,
        http_method = "DELETE",
        http_path = "/campaigns/{name}",
    }, options)
end

function Client:deleteDecoderManifest(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDecoderManifest",
        input_schema = types.DeleteDecoderManifestInput,
        output_schema = types.DeleteDecoderManifestOutput,
        http_method = "DELETE",
        http_path = "/decoder-manifests/{name}",
    }, options)
end

function Client:deleteFleet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleet",
        input_schema = types.DeleteFleetInput,
        output_schema = types.DeleteFleetOutput,
        http_method = "DELETE",
        http_path = "/fleets/{fleetId}",
    }, options)
end

function Client:deleteModelManifest(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModelManifest",
        input_schema = types.DeleteModelManifestInput,
        output_schema = types.DeleteModelManifestOutput,
        http_method = "DELETE",
        http_path = "/model-manifests/{name}",
    }, options)
end

function Client:deleteSignalCatalog(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSignalCatalog",
        input_schema = types.DeleteSignalCatalogInput,
        output_schema = types.DeleteSignalCatalogOutput,
        http_method = "DELETE",
        http_path = "/signal-catalogs/{name}",
    }, options)
end

function Client:deleteStateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStateTemplate",
        input_schema = types.DeleteStateTemplateInput,
        output_schema = types.DeleteStateTemplateOutput,
        http_method = "DELETE",
        http_path = "/state-templates/{identifier}",
    }, options)
end

function Client:deleteVehicle(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVehicle",
        input_schema = types.DeleteVehicleInput,
        output_schema = types.DeleteVehicleOutput,
        http_method = "DELETE",
        http_path = "/vehicles/{vehicleName}",
    }, options)
end

function Client:disassociateVehicleFleet(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateVehicleFleet",
        input_schema = types.DisassociateVehicleFleetInput,
        output_schema = types.DisassociateVehicleFleetOutput,
        http_method = "PUT",
        http_path = "/vehicles/{vehicleName}/disassociate",
    }, options)
end

function Client:getCampaign(input, options)
    return self:invokeOperation(input, {
        name = "GetCampaign",
        input_schema = types.GetCampaignInput,
        output_schema = types.GetCampaignOutput,
        http_method = "GET",
        http_path = "/campaigns/{name}",
    }, options)
end

function Client:getDecoderManifest(input, options)
    return self:invokeOperation(input, {
        name = "GetDecoderManifest",
        input_schema = types.GetDecoderManifestInput,
        output_schema = types.GetDecoderManifestOutput,
        http_method = "GET",
        http_path = "/decoder-manifests/{name}",
    }, options)
end

function Client:getEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetEncryptionConfiguration",
        input_schema = types.GetEncryptionConfigurationInput,
        output_schema = types.GetEncryptionConfigurationOutput,
        http_method = "GET",
        http_path = "/encryptionConfiguration",
    }, options)
end

function Client:getFleet(input, options)
    return self:invokeOperation(input, {
        name = "GetFleet",
        input_schema = types.GetFleetInput,
        output_schema = types.GetFleetOutput,
        http_method = "GET",
        http_path = "/fleets/{fleetId}",
    }, options)
end

function Client:getLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "GetLoggingOptions",
        input_schema = types.GetLoggingOptionsInput,
        output_schema = types.GetLoggingOptionsOutput,
        http_method = "GET",
        http_path = "/loggingOptions",
    }, options)
end

function Client:getModelManifest(input, options)
    return self:invokeOperation(input, {
        name = "GetModelManifest",
        input_schema = types.GetModelManifestInput,
        output_schema = types.GetModelManifestOutput,
        http_method = "GET",
        http_path = "/model-manifests/{name}",
    }, options)
end

function Client:getRegisterAccountStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetRegisterAccountStatus",
        input_schema = types.GetRegisterAccountStatusInput,
        output_schema = types.GetRegisterAccountStatusOutput,
        http_method = "GET",
        http_path = "/account/registration_status",
    }, options)
end

function Client:getSignalCatalog(input, options)
    return self:invokeOperation(input, {
        name = "GetSignalCatalog",
        input_schema = types.GetSignalCatalogInput,
        output_schema = types.GetSignalCatalogOutput,
        http_method = "GET",
        http_path = "/signal-catalogs/{name}",
    }, options)
end

function Client:getStateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetStateTemplate",
        input_schema = types.GetStateTemplateInput,
        output_schema = types.GetStateTemplateOutput,
        http_method = "GET",
        http_path = "/state-templates/{identifier}",
    }, options)
end

function Client:getVehicle(input, options)
    return self:invokeOperation(input, {
        name = "GetVehicle",
        input_schema = types.GetVehicleInput,
        output_schema = types.GetVehicleOutput,
        http_method = "GET",
        http_path = "/vehicles/{vehicleName}",
    }, options)
end

function Client:getVehicleStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetVehicleStatus",
        input_schema = types.GetVehicleStatusInput,
        output_schema = types.GetVehicleStatusOutput,
        http_method = "GET",
        http_path = "/vehicles/{vehicleName}/status",
    }, options)
end

function Client:importDecoderManifest(input, options)
    return self:invokeOperation(input, {
        name = "ImportDecoderManifest",
        input_schema = types.ImportDecoderManifestInput,
        output_schema = types.ImportDecoderManifestOutput,
        http_method = "PUT",
        http_path = "/decoder-manifests/{name}",
    }, options)
end

function Client:importSignalCatalog(input, options)
    return self:invokeOperation(input, {
        name = "ImportSignalCatalog",
        input_schema = types.ImportSignalCatalogInput,
        output_schema = types.ImportSignalCatalogOutput,
        http_method = "PUT",
        http_path = "/signal-catalogs/{name}/nodes",
    }, options)
end

function Client:listCampaigns(input, options)
    return self:invokeOperation(input, {
        name = "ListCampaigns",
        input_schema = types.ListCampaignsInput,
        output_schema = types.ListCampaignsOutput,
        http_method = "GET",
        http_path = "/campaigns",
    }, options)
end

function Client:listDecoderManifestNetworkInterfaces(input, options)
    return self:invokeOperation(input, {
        name = "ListDecoderManifestNetworkInterfaces",
        input_schema = types.ListDecoderManifestNetworkInterfacesInput,
        output_schema = types.ListDecoderManifestNetworkInterfacesOutput,
        http_method = "GET",
        http_path = "/decoder-manifests/{name}/network-interfaces",
    }, options)
end

function Client:listDecoderManifests(input, options)
    return self:invokeOperation(input, {
        name = "ListDecoderManifests",
        input_schema = types.ListDecoderManifestsInput,
        output_schema = types.ListDecoderManifestsOutput,
        http_method = "GET",
        http_path = "/decoder-manifests",
    }, options)
end

function Client:listDecoderManifestSignals(input, options)
    return self:invokeOperation(input, {
        name = "ListDecoderManifestSignals",
        input_schema = types.ListDecoderManifestSignalsInput,
        output_schema = types.ListDecoderManifestSignalsOutput,
        http_method = "GET",
        http_path = "/decoder-manifests/{name}/signals",
    }, options)
end

function Client:listFleets(input, options)
    return self:invokeOperation(input, {
        name = "ListFleets",
        input_schema = types.ListFleetsInput,
        output_schema = types.ListFleetsOutput,
        http_method = "GET",
        http_path = "/fleets",
    }, options)
end

function Client:listFleetsForVehicle(input, options)
    return self:invokeOperation(input, {
        name = "ListFleetsForVehicle",
        input_schema = types.ListFleetsForVehicleInput,
        output_schema = types.ListFleetsForVehicleOutput,
        http_method = "GET",
        http_path = "/vehicles/{vehicleName}/fleets",
    }, options)
end

function Client:listModelManifestNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListModelManifestNodes",
        input_schema = types.ListModelManifestNodesInput,
        output_schema = types.ListModelManifestNodesOutput,
        http_method = "GET",
        http_path = "/model-manifests/{name}/nodes",
    }, options)
end

function Client:listModelManifests(input, options)
    return self:invokeOperation(input, {
        name = "ListModelManifests",
        input_schema = types.ListModelManifestsInput,
        output_schema = types.ListModelManifestsOutput,
        http_method = "GET",
        http_path = "/model-manifests",
    }, options)
end

function Client:listSignalCatalogNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListSignalCatalogNodes",
        input_schema = types.ListSignalCatalogNodesInput,
        output_schema = types.ListSignalCatalogNodesOutput,
        http_method = "GET",
        http_path = "/signal-catalogs/{name}/nodes",
    }, options)
end

function Client:listSignalCatalogs(input, options)
    return self:invokeOperation(input, {
        name = "ListSignalCatalogs",
        input_schema = types.ListSignalCatalogsInput,
        output_schema = types.ListSignalCatalogsOutput,
        http_method = "GET",
        http_path = "/signal-catalogs",
    }, options)
end

function Client:listStateTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListStateTemplates",
        input_schema = types.ListStateTemplatesInput,
        output_schema = types.ListStateTemplatesOutput,
        http_method = "GET",
        http_path = "/state-templates",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags",
    }, options)
end

function Client:listVehicles(input, options)
    return self:invokeOperation(input, {
        name = "ListVehicles",
        input_schema = types.ListVehiclesInput,
        output_schema = types.ListVehiclesOutput,
        http_method = "GET",
        http_path = "/vehicles",
    }, options)
end

function Client:listVehiclesInFleet(input, options)
    return self:invokeOperation(input, {
        name = "ListVehiclesInFleet",
        input_schema = types.ListVehiclesInFleetInput,
        output_schema = types.ListVehiclesInFleetOutput,
        http_method = "GET",
        http_path = "/fleets/{fleetId}/vehicles",
    }, options)
end

function Client:putEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutEncryptionConfiguration",
        input_schema = types.PutEncryptionConfigurationInput,
        output_schema = types.PutEncryptionConfigurationOutput,
        http_method = "POST",
        http_path = "/encryptionConfiguration",
    }, options)
end

function Client:putLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutLoggingOptions",
        input_schema = types.PutLoggingOptionsInput,
        output_schema = types.PutLoggingOptionsOutput,
        http_method = "PUT",
        http_path = "/loggingOptions",
    }, options)
end

function Client:registerAccount(input, options)
    return self:invokeOperation(input, {
        name = "RegisterAccount",
        input_schema = types.RegisterAccountInput,
        output_schema = types.RegisterAccountOutput,
        http_method = "POST",
        http_path = "/account/registration",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags",
    }, options)
end

function Client:updateCampaign(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaign",
        input_schema = types.UpdateCampaignInput,
        output_schema = types.UpdateCampaignOutput,
        http_method = "PUT",
        http_path = "/campaigns/{name}",
    }, options)
end

function Client:updateDecoderManifest(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDecoderManifest",
        input_schema = types.UpdateDecoderManifestInput,
        output_schema = types.UpdateDecoderManifestOutput,
        http_method = "PATCH",
        http_path = "/decoder-manifests/{name}",
    }, options)
end

function Client:updateFleet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleet",
        input_schema = types.UpdateFleetInput,
        output_schema = types.UpdateFleetOutput,
        http_method = "PATCH",
        http_path = "/fleets/{fleetId}",
    }, options)
end

function Client:updateModelManifest(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModelManifest",
        input_schema = types.UpdateModelManifestInput,
        output_schema = types.UpdateModelManifestOutput,
        http_method = "PATCH",
        http_path = "/model-manifests/{name}",
    }, options)
end

function Client:updateSignalCatalog(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSignalCatalog",
        input_schema = types.UpdateSignalCatalogInput,
        output_schema = types.UpdateSignalCatalogOutput,
        http_method = "PATCH",
        http_path = "/signal-catalogs/{name}",
    }, options)
end

function Client:updateStateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStateTemplate",
        input_schema = types.UpdateStateTemplateInput,
        output_schema = types.UpdateStateTemplateOutput,
        http_method = "PATCH",
        http_path = "/state-templates/{identifier}",
    }, options)
end

function Client:updateVehicle(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVehicle",
        input_schema = types.UpdateVehicleInput,
        output_schema = types.UpdateVehicleOutput,
        http_method = "PATCH",
        http_path = "/vehicles/{vehicleName}",
    }, options)
end

return M
