



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("rekognition.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("rekognition.schemas")
local traits = require("smithy.traits")
local types = require("rekognition.types")
local sdk_defaults = require("aws.sdk_defaults")

















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "RekognitionService"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "rekognition", signing_region = c.region } }
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

function C:associateFaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateFaces, input, options)
end

function C:compareFaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompareFaces, input, options)
end

function C:copyProjectVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyProjectVersion, input, options)
end

function C:createCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCollection, input, options)
end

function C:createDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataset, input, options)
end

function C:createFaceLivenessSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFaceLivenessSession, input, options)
end

function C:createProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProject, input, options)
end

function C:createProjectVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProjectVersion, input, options)
end

function C:createStreamProcessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStreamProcessor, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:deleteCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCollection, input, options)
end

function C:deleteDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataset, input, options)
end

function C:deleteFaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFaces, input, options)
end

function C:deleteProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProject, input, options)
end

function C:deleteProjectPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProjectPolicy, input, options)
end

function C:deleteProjectVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProjectVersion, input, options)
end

function C:deleteStreamProcessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStreamProcessor, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:describeCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCollection, input, options)
end

function C:describeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataset, input, options)
end

function C:describeProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProjects, input, options)
end

function C:describeProjectVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProjectVersions, input, options)
end

function C:describeStreamProcessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStreamProcessor, input, options)
end

function C:detectCustomLabels(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectCustomLabels, input, options)
end

function C:detectFaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectFaces, input, options)
end

function C:detectLabels(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectLabels, input, options)
end

function C:detectModerationLabels(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectModerationLabels, input, options)
end

function C:detectProtectiveEquipment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectProtectiveEquipment, input, options)
end

function C:detectText(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectText, input, options)
end

function C:disassociateFaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFaces, input, options)
end

function C:distributeDatasetEntries(input, options)
   return self:invokeOperation(schemas.Service, schemas.DistributeDatasetEntries, input, options)
end

function C:getCelebrityInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCelebrityInfo, input, options)
end

function C:getCelebrityRecognition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCelebrityRecognition, input, options)
end

function C:getContentModeration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContentModeration, input, options)
end

function C:getFaceDetection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFaceDetection, input, options)
end

function C:getFaceLivenessSessionResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFaceLivenessSessionResults, input, options)
end

function C:getFaceSearch(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFaceSearch, input, options)
end

function C:getLabelDetection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLabelDetection, input, options)
end

function C:getMediaAnalysisJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMediaAnalysisJob, input, options)
end

function C:getPersonTracking(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPersonTracking, input, options)
end

function C:getSegmentDetection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSegmentDetection, input, options)
end

function C:getTextDetection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTextDetection, input, options)
end

function C:indexFaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.IndexFaces, input, options)
end

function C:listCollections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollections, input, options)
end

function C:listDatasetEntries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasetEntries, input, options)
end

function C:listDatasetLabels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasetLabels, input, options)
end

function C:listFaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFaces, input, options)
end

function C:listMediaAnalysisJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMediaAnalysisJobs, input, options)
end

function C:listProjectPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProjectPolicies, input, options)
end

function C:listStreamProcessors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreamProcessors, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:putProjectPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutProjectPolicy, input, options)
end

function C:recognizeCelebrities(input, options)
   return self:invokeOperation(schemas.Service, schemas.RecognizeCelebrities, input, options)
end

function C:searchFaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchFaces, input, options)
end

function C:searchFacesByImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchFacesByImage, input, options)
end

function C:searchUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchUsers, input, options)
end

function C:searchUsersByImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchUsersByImage, input, options)
end

function C:startCelebrityRecognition(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCelebrityRecognition, input, options)
end

function C:startContentModeration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartContentModeration, input, options)
end

function C:startFaceDetection(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFaceDetection, input, options)
end

function C:startFaceSearch(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFaceSearch, input, options)
end

function C:startLabelDetection(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartLabelDetection, input, options)
end

function C:startMediaAnalysisJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMediaAnalysisJob, input, options)
end

function C:startPersonTracking(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPersonTracking, input, options)
end

function C:startProjectVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartProjectVersion, input, options)
end

function C:startSegmentDetection(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSegmentDetection, input, options)
end

function C:startStreamProcessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartStreamProcessor, input, options)
end

function C:startTextDetection(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTextDetection, input, options)
end

function C:stopProjectVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopProjectVersion, input, options)
end

function C:stopStreamProcessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopStreamProcessor, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDatasetEntries(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDatasetEntries, input, options)
end

function C:updateStreamProcessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStreamProcessor, input, options)
end

return M
