local types = require("geomaps.types")

local record Client
    getGlyphs: function(Client, types.GetGlyphsInput): types.GetGlyphsOutput, table
    getSprites: function(Client, types.GetSpritesInput): types.GetSpritesOutput, table
    getStaticMap: function(Client, types.GetStaticMapInput): types.GetStaticMapOutput, table
    getStyleDescriptor: function(Client, types.GetStyleDescriptorInput): types.GetStyleDescriptorOutput, table
    getTile: function(Client, types.GetTileInput): types.GetTileOutput, table
end

local record M
    new: function(table): Client
end

return M
