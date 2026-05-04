local types = require("medicalimaging.types")

local record Client
    copyImageSet: function(Client, types.CopyImageSetInput): types.CopyImageSetOutput, table
    createDatastore: function(Client, types.CreateDatastoreInput): types.CreateDatastoreOutput, table
    deleteDatastore: function(Client, types.DeleteDatastoreInput): types.DeleteDatastoreOutput, table
    deleteImageSet: function(Client, types.DeleteImageSetInput): types.DeleteImageSetOutput, table
    getDatastore: function(Client, types.GetDatastoreInput): types.GetDatastoreOutput, table
    getDICOMImportJob: function(Client, types.GetDICOMImportJobInput): types.GetDICOMImportJobOutput, table
    getImageFrame: function(Client, types.GetImageFrameInput): types.GetImageFrameOutput, table
    getImageSet: function(Client, types.GetImageSetInput): types.GetImageSetOutput, table
    getImageSetMetadata: function(Client, types.GetImageSetMetadataInput): types.GetImageSetMetadataOutput, table
    listDatastores: function(Client, types.ListDatastoresInput): types.ListDatastoresOutput, table
    listDICOMImportJobs: function(Client, types.ListDICOMImportJobsInput): types.ListDICOMImportJobsOutput, table
    listImageSetVersions: function(Client, types.ListImageSetVersionsInput): types.ListImageSetVersionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    searchImageSets: function(Client, types.SearchImageSetsInput): types.SearchImageSetsOutput, table
    startDICOMImportJob: function(Client, types.StartDICOMImportJobInput): types.StartDICOMImportJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateImageSetMetadata: function(Client, types.UpdateImageSetMetadataInput): types.UpdateImageSetMetadataOutput, table
end

local record M
    new: function(table): Client
end

return M
