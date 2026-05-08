



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotfleetwise.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("iotfleetwise.schemas")
local traits = require("smithy.traits")
local types = require("iotfleetwise.types")
local sdk_defaults = require("aws.sdk_defaults")































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "IoTAutobahnControlPlane"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotfleetwise", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:associateVehicleFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateVehicleFleet, input, options)
end

function C:batchCreateVehicle(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateVehicle, input, options)
end

function C:batchUpdateVehicle(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateVehicle, input, options)
end

function C:createCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCampaign, input, options)
end

function C:createDecoderManifest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDecoderManifest, input, options)
end

function C:createFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFleet, input, options)
end

function C:createModelManifest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelManifest, input, options)
end

function C:createSignalCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSignalCatalog, input, options)
end

function C:createStateTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStateTemplate, input, options)
end

function C:createVehicle(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVehicle, input, options)
end

function C:deleteCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCampaign, input, options)
end

function C:deleteDecoderManifest(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDecoderManifest, input, options)
end

function C:deleteFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFleet, input, options)
end

function C:deleteModelManifest(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModelManifest, input, options)
end

function C:deleteSignalCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSignalCatalog, input, options)
end

function C:deleteStateTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStateTemplate, input, options)
end

function C:deleteVehicle(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVehicle, input, options)
end

function C:disassociateVehicleFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateVehicleFleet, input, options)
end

function C:getCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCampaign, input, options)
end

function C:getDecoderManifest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDecoderManifest, input, options)
end

function C:getEncryptionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEncryptionConfiguration, input, options)
end

function C:getFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFleet, input, options)
end

function C:getLoggingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoggingOptions, input, options)
end

function C:getModelManifest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModelManifest, input, options)
end

function C:getRegisterAccountStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegisterAccountStatus, input, options)
end

function C:getSignalCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSignalCatalog, input, options)
end

function C:getStateTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStateTemplate, input, options)
end

function C:getVehicle(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVehicle, input, options)
end

function C:getVehicleStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVehicleStatus, input, options)
end

function C:importDecoderManifest(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportDecoderManifest, input, options)
end

function C:importSignalCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportSignalCatalog, input, options)
end

function C:listCampaigns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCampaigns, input, options)
end

function C:listDecoderManifestNetworkInterfaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDecoderManifestNetworkInterfaces, input, options)
end

function C:listDecoderManifests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDecoderManifests, input, options)
end

function C:listDecoderManifestSignals(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDecoderManifestSignals, input, options)
end

function C:listFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFleets, input, options)
end

function C:listFleetsForVehicle(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFleetsForVehicle, input, options)
end

function C:listModelManifestNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelManifestNodes, input, options)
end

function C:listModelManifests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelManifests, input, options)
end

function C:listSignalCatalogNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSignalCatalogNodes, input, options)
end

function C:listSignalCatalogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSignalCatalogs, input, options)
end

function C:listStateTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStateTemplates, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVehicles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVehicles, input, options)
end

function C:listVehiclesInFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVehiclesInFleet, input, options)
end

function C:putEncryptionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEncryptionConfiguration, input, options)
end

function C:putLoggingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLoggingOptions, input, options)
end

function C:registerAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterAccount, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCampaign, input, options)
end

function C:updateDecoderManifest(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDecoderManifest, input, options)
end

function C:updateFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFleet, input, options)
end

function C:updateModelManifest(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateModelManifest, input, options)
end

function C:updateSignalCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSignalCatalog, input, options)
end

function C:updateStateTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStateTemplate, input, options)
end

function C:updateVehicle(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVehicle, input, options)
end

return M
