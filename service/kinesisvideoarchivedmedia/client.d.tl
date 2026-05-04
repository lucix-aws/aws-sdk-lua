local types = require("kinesisvideoarchivedmedia.types")

local record Client
    getClip: function(Client, types.GetClipInput): types.GetClipOutput, table
    getDASHStreamingSessionURL: function(Client, types.GetDASHStreamingSessionURLInput): types.GetDASHStreamingSessionURLOutput, table
    getHLSStreamingSessionURL: function(Client, types.GetHLSStreamingSessionURLInput): types.GetHLSStreamingSessionURLOutput, table
    getImages: function(Client, types.GetImagesInput): types.GetImagesOutput, table
    getMediaForFragmentList: function(Client, types.GetMediaForFragmentListInput): types.GetMediaForFragmentListOutput, table
    listFragments: function(Client, types.ListFragmentsInput): types.ListFragmentsOutput, table
end

local record M
    new: function(table): Client
end

return M
