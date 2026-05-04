local types = require("geoplaces.types")

local record Client
    autocomplete: function(Client, types.AutocompleteInput): types.AutocompleteOutput, table
    geocode: function(Client, types.GeocodeInput): types.GeocodeOutput, table
    getPlace: function(Client, types.GetPlaceInput): types.GetPlaceOutput, table
    reverseGeocode: function(Client, types.ReverseGeocodeInput): types.ReverseGeocodeOutput, table
    searchNearby: function(Client, types.SearchNearbyInput): types.SearchNearbyOutput, table
    searchText: function(Client, types.SearchTextInput): types.SearchTextOutput, table
    suggest: function(Client, types.SuggestInput): types.SuggestOutput, table
end

local record M
    new: function(table): Client
end

return M
