local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeProjectVersions.
function M.pages_describe_project_versions(client, input)
    return paginator.pages(client, "describeProjectVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProjectVersionDescriptions",
    })
end

--- Returns an item iterator for describeProjectVersions.
function M.items_describe_project_versions(client, input)
    return paginator.items(client, "describeProjectVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProjectVersionDescriptions",
    })
end

--- Returns a page iterator for describeProjects.
function M.pages_describe_projects(client, input)
    return paginator.pages(client, "describeProjects", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProjectDescriptions",
    })
end

--- Returns an item iterator for describeProjects.
function M.items_describe_projects(client, input)
    return paginator.items(client, "describeProjects", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProjectDescriptions",
    })
end

--- Returns a page iterator for getCelebrityRecognition.
function M.pages_get_celebrity_recognition(client, input)
    return paginator.pages(client, "getCelebrityRecognition", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getContentModeration.
function M.pages_get_content_moderation(client, input)
    return paginator.pages(client, "getContentModeration", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getFaceDetection.
function M.pages_get_face_detection(client, input)
    return paginator.pages(client, "getFaceDetection", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getFaceSearch.
function M.pages_get_face_search(client, input)
    return paginator.pages(client, "getFaceSearch", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getLabelDetection.
function M.pages_get_label_detection(client, input)
    return paginator.pages(client, "getLabelDetection", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getPersonTracking.
function M.pages_get_person_tracking(client, input)
    return paginator.pages(client, "getPersonTracking", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getSegmentDetection.
function M.pages_get_segment_detection(client, input)
    return paginator.pages(client, "getSegmentDetection", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getTextDetection.
function M.pages_get_text_detection(client, input)
    return paginator.pages(client, "getTextDetection", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listCollections.
function M.pages_list_collections(client, input)
    return paginator.pages(client, "listCollections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CollectionIds",
    })
end

--- Returns an item iterator for listCollections.
function M.items_list_collections(client, input)
    return paginator.items(client, "listCollections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CollectionIds",
    })
end

--- Returns a page iterator for listDatasetEntries.
function M.pages_list_dataset_entries(client, input)
    return paginator.pages(client, "listDatasetEntries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatasetEntries",
    })
end

--- Returns an item iterator for listDatasetEntries.
function M.items_list_dataset_entries(client, input)
    return paginator.items(client, "listDatasetEntries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatasetEntries",
    })
end

--- Returns a page iterator for listDatasetLabels.
function M.pages_list_dataset_labels(client, input)
    return paginator.pages(client, "listDatasetLabels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatasetLabelDescriptions",
    })
end

--- Returns an item iterator for listDatasetLabels.
function M.items_list_dataset_labels(client, input)
    return paginator.items(client, "listDatasetLabels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatasetLabelDescriptions",
    })
end

--- Returns a page iterator for listFaces.
function M.pages_list_faces(client, input)
    return paginator.pages(client, "listFaces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Faces",
    })
end

--- Returns an item iterator for listFaces.
function M.items_list_faces(client, input)
    return paginator.items(client, "listFaces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Faces",
    })
end

--- Returns a page iterator for listMediaAnalysisJobs.
function M.pages_list_media_analysis_jobs(client, input)
    return paginator.pages(client, "listMediaAnalysisJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listProjectPolicies.
function M.pages_list_project_policies(client, input)
    return paginator.pages(client, "listProjectPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProjectPolicies",
    })
end

--- Returns an item iterator for listProjectPolicies.
function M.items_list_project_policies(client, input)
    return paginator.items(client, "listProjectPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProjectPolicies",
    })
end

--- Returns a page iterator for listStreamProcessors.
function M.pages_list_stream_processors(client, input)
    return paginator.pages(client, "listStreamProcessors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listUsers.
function M.pages_list_users(client, input)
    return paginator.pages(client, "listUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Users",
    })
end

--- Returns an item iterator for listUsers.
function M.items_list_users(client, input)
    return paginator.items(client, "listUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Users",
    })
end

return M
