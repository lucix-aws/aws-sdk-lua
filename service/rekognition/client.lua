local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("rekognition.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("rekognition.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RekognitionService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "rekognition", signing_region = cfg.region } }
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

function Client:associateFaces(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFaces",
        input_schema = types.AssociateFacesInput,
        output_schema = types.AssociateFacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:compareFaces(input, options)
    return self:invokeOperation(input, {
        name = "CompareFaces",
        input_schema = types.CompareFacesInput,
        output_schema = types.CompareFacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyProjectVersion(input, options)
    return self:invokeOperation(input, {
        name = "CopyProjectVersion",
        input_schema = types.CopyProjectVersionInput,
        output_schema = types.CopyProjectVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCollection(input, options)
    return self:invokeOperation(input, {
        name = "CreateCollection",
        input_schema = types.CreateCollectionInput,
        output_schema = types.CreateCollectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataset",
        input_schema = types.CreateDatasetInput,
        output_schema = types.CreateDatasetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFaceLivenessSession(input, options)
    return self:invokeOperation(input, {
        name = "CreateFaceLivenessSession",
        input_schema = types.CreateFaceLivenessSessionInput,
        output_schema = types.CreateFaceLivenessSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = types.CreateProjectInput,
        output_schema = types.CreateProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProjectVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateProjectVersion",
        input_schema = types.CreateProjectVersionInput,
        output_schema = types.CreateProjectVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStreamProcessor(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamProcessor",
        input_schema = types.CreateStreamProcessorInput,
        output_schema = types.CreateStreamProcessorOutput,
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
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCollection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCollection",
        input_schema = types.DeleteCollectionInput,
        output_schema = types.DeleteCollectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataset",
        input_schema = types.DeleteDatasetInput,
        output_schema = types.DeleteDatasetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFaces(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFaces",
        input_schema = types.DeleteFacesInput,
        output_schema = types.DeleteFacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = types.DeleteProjectInput,
        output_schema = types.DeleteProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProjectPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProjectPolicy",
        input_schema = types.DeleteProjectPolicyInput,
        output_schema = types.DeleteProjectPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProjectVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProjectVersion",
        input_schema = types.DeleteProjectVersionInput,
        output_schema = types.DeleteProjectVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStreamProcessor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStreamProcessor",
        input_schema = types.DeleteStreamProcessorInput,
        output_schema = types.DeleteStreamProcessorOutput,
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
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCollection(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCollection",
        input_schema = types.DescribeCollectionInput,
        output_schema = types.DescribeCollectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataset",
        input_schema = types.DescribeDatasetInput,
        output_schema = types.DescribeDatasetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProjects(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProjects",
        input_schema = types.DescribeProjectsInput,
        output_schema = types.DescribeProjectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProjectVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProjectVersions",
        input_schema = types.DescribeProjectVersionsInput,
        output_schema = types.DescribeProjectVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStreamProcessor(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStreamProcessor",
        input_schema = types.DescribeStreamProcessorInput,
        output_schema = types.DescribeStreamProcessorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectCustomLabels(input, options)
    return self:invokeOperation(input, {
        name = "DetectCustomLabels",
        input_schema = types.DetectCustomLabelsInput,
        output_schema = types.DetectCustomLabelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectFaces(input, options)
    return self:invokeOperation(input, {
        name = "DetectFaces",
        input_schema = types.DetectFacesInput,
        output_schema = types.DetectFacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectLabels(input, options)
    return self:invokeOperation(input, {
        name = "DetectLabels",
        input_schema = types.DetectLabelsInput,
        output_schema = types.DetectLabelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectModerationLabels(input, options)
    return self:invokeOperation(input, {
        name = "DetectModerationLabels",
        input_schema = types.DetectModerationLabelsInput,
        output_schema = types.DetectModerationLabelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectProtectiveEquipment(input, options)
    return self:invokeOperation(input, {
        name = "DetectProtectiveEquipment",
        input_schema = types.DetectProtectiveEquipmentInput,
        output_schema = types.DetectProtectiveEquipmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectText(input, options)
    return self:invokeOperation(input, {
        name = "DetectText",
        input_schema = types.DetectTextInput,
        output_schema = types.DetectTextOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateFaces(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFaces",
        input_schema = types.DisassociateFacesInput,
        output_schema = types.DisassociateFacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:distributeDatasetEntries(input, options)
    return self:invokeOperation(input, {
        name = "DistributeDatasetEntries",
        input_schema = types.DistributeDatasetEntriesInput,
        output_schema = types.DistributeDatasetEntriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCelebrityInfo(input, options)
    return self:invokeOperation(input, {
        name = "GetCelebrityInfo",
        input_schema = types.GetCelebrityInfoInput,
        output_schema = types.GetCelebrityInfoOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCelebrityRecognition(input, options)
    return self:invokeOperation(input, {
        name = "GetCelebrityRecognition",
        input_schema = types.GetCelebrityRecognitionInput,
        output_schema = types.GetCelebrityRecognitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContentModeration(input, options)
    return self:invokeOperation(input, {
        name = "GetContentModeration",
        input_schema = types.GetContentModerationInput,
        output_schema = types.GetContentModerationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFaceDetection(input, options)
    return self:invokeOperation(input, {
        name = "GetFaceDetection",
        input_schema = types.GetFaceDetectionInput,
        output_schema = types.GetFaceDetectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFaceLivenessSessionResults(input, options)
    return self:invokeOperation(input, {
        name = "GetFaceLivenessSessionResults",
        input_schema = types.GetFaceLivenessSessionResultsInput,
        output_schema = types.GetFaceLivenessSessionResultsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFaceSearch(input, options)
    return self:invokeOperation(input, {
        name = "GetFaceSearch",
        input_schema = types.GetFaceSearchInput,
        output_schema = types.GetFaceSearchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLabelDetection(input, options)
    return self:invokeOperation(input, {
        name = "GetLabelDetection",
        input_schema = types.GetLabelDetectionInput,
        output_schema = types.GetLabelDetectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMediaAnalysisJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMediaAnalysisJob",
        input_schema = types.GetMediaAnalysisJobInput,
        output_schema = types.GetMediaAnalysisJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPersonTracking(input, options)
    return self:invokeOperation(input, {
        name = "GetPersonTracking",
        input_schema = types.GetPersonTrackingInput,
        output_schema = types.GetPersonTrackingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSegmentDetection(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentDetection",
        input_schema = types.GetSegmentDetectionInput,
        output_schema = types.GetSegmentDetectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTextDetection(input, options)
    return self:invokeOperation(input, {
        name = "GetTextDetection",
        input_schema = types.GetTextDetectionInput,
        output_schema = types.GetTextDetectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:indexFaces(input, options)
    return self:invokeOperation(input, {
        name = "IndexFaces",
        input_schema = types.IndexFacesInput,
        output_schema = types.IndexFacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollections(input, options)
    return self:invokeOperation(input, {
        name = "ListCollections",
        input_schema = types.ListCollectionsInput,
        output_schema = types.ListCollectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatasetEntries(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasetEntries",
        input_schema = types.ListDatasetEntriesInput,
        output_schema = types.ListDatasetEntriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatasetLabels(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasetLabels",
        input_schema = types.ListDatasetLabelsInput,
        output_schema = types.ListDatasetLabelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFaces(input, options)
    return self:invokeOperation(input, {
        name = "ListFaces",
        input_schema = types.ListFacesInput,
        output_schema = types.ListFacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMediaAnalysisJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMediaAnalysisJobs",
        input_schema = types.ListMediaAnalysisJobsInput,
        output_schema = types.ListMediaAnalysisJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProjectPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListProjectPolicies",
        input_schema = types.ListProjectPoliciesInput,
        output_schema = types.ListProjectPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStreamProcessors(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamProcessors",
        input_schema = types.ListStreamProcessorsInput,
        output_schema = types.ListStreamProcessorsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putProjectPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutProjectPolicy",
        input_schema = types.PutProjectPolicyInput,
        output_schema = types.PutProjectPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:recognizeCelebrities(input, options)
    return self:invokeOperation(input, {
        name = "RecognizeCelebrities",
        input_schema = types.RecognizeCelebritiesInput,
        output_schema = types.RecognizeCelebritiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchFaces(input, options)
    return self:invokeOperation(input, {
        name = "SearchFaces",
        input_schema = types.SearchFacesInput,
        output_schema = types.SearchFacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchFacesByImage(input, options)
    return self:invokeOperation(input, {
        name = "SearchFacesByImage",
        input_schema = types.SearchFacesByImageInput,
        output_schema = types.SearchFacesByImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchUsers(input, options)
    return self:invokeOperation(input, {
        name = "SearchUsers",
        input_schema = types.SearchUsersInput,
        output_schema = types.SearchUsersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchUsersByImage(input, options)
    return self:invokeOperation(input, {
        name = "SearchUsersByImage",
        input_schema = types.SearchUsersByImageInput,
        output_schema = types.SearchUsersByImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCelebrityRecognition(input, options)
    return self:invokeOperation(input, {
        name = "StartCelebrityRecognition",
        input_schema = types.StartCelebrityRecognitionInput,
        output_schema = types.StartCelebrityRecognitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startContentModeration(input, options)
    return self:invokeOperation(input, {
        name = "StartContentModeration",
        input_schema = types.StartContentModerationInput,
        output_schema = types.StartContentModerationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFaceDetection(input, options)
    return self:invokeOperation(input, {
        name = "StartFaceDetection",
        input_schema = types.StartFaceDetectionInput,
        output_schema = types.StartFaceDetectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFaceSearch(input, options)
    return self:invokeOperation(input, {
        name = "StartFaceSearch",
        input_schema = types.StartFaceSearchInput,
        output_schema = types.StartFaceSearchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startLabelDetection(input, options)
    return self:invokeOperation(input, {
        name = "StartLabelDetection",
        input_schema = types.StartLabelDetectionInput,
        output_schema = types.StartLabelDetectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMediaAnalysisJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMediaAnalysisJob",
        input_schema = types.StartMediaAnalysisJobInput,
        output_schema = types.StartMediaAnalysisJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startPersonTracking(input, options)
    return self:invokeOperation(input, {
        name = "StartPersonTracking",
        input_schema = types.StartPersonTrackingInput,
        output_schema = types.StartPersonTrackingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startProjectVersion(input, options)
    return self:invokeOperation(input, {
        name = "StartProjectVersion",
        input_schema = types.StartProjectVersionInput,
        output_schema = types.StartProjectVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSegmentDetection(input, options)
    return self:invokeOperation(input, {
        name = "StartSegmentDetection",
        input_schema = types.StartSegmentDetectionInput,
        output_schema = types.StartSegmentDetectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startStreamProcessor(input, options)
    return self:invokeOperation(input, {
        name = "StartStreamProcessor",
        input_schema = types.StartStreamProcessorInput,
        output_schema = types.StartStreamProcessorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTextDetection(input, options)
    return self:invokeOperation(input, {
        name = "StartTextDetection",
        input_schema = types.StartTextDetectionInput,
        output_schema = types.StartTextDetectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopProjectVersion(input, options)
    return self:invokeOperation(input, {
        name = "StopProjectVersion",
        input_schema = types.StopProjectVersionInput,
        output_schema = types.StopProjectVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopStreamProcessor(input, options)
    return self:invokeOperation(input, {
        name = "StopStreamProcessor",
        input_schema = types.StopStreamProcessorInput,
        output_schema = types.StopStreamProcessorOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDatasetEntries(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDatasetEntries",
        input_schema = types.UpdateDatasetEntriesInput,
        output_schema = types.UpdateDatasetEntriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStreamProcessor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStreamProcessor",
        input_schema = types.UpdateStreamProcessorInput,
        output_schema = types.UpdateStreamProcessorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
