local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listContactChannels.
function M.pages_list_contact_channels(client, input)
    return paginator.pages(client, "listContactChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ContactChannels",
    })
end

--- Returns an item iterator for listContactChannels.
function M.items_list_contact_channels(client, input)
    return paginator.items(client, "listContactChannels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ContactChannels",
    })
end

--- Returns a page iterator for listContacts.
function M.pages_list_contacts(client, input)
    return paginator.pages(client, "listContacts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Contacts",
    })
end

--- Returns an item iterator for listContacts.
function M.items_list_contacts(client, input)
    return paginator.items(client, "listContacts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Contacts",
    })
end

--- Returns a page iterator for listEngagements.
function M.pages_list_engagements(client, input)
    return paginator.pages(client, "listEngagements", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Engagements",
    })
end

--- Returns an item iterator for listEngagements.
function M.items_list_engagements(client, input)
    return paginator.items(client, "listEngagements", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Engagements",
    })
end

--- Returns a page iterator for listPageReceipts.
function M.pages_list_page_receipts(client, input)
    return paginator.pages(client, "listPageReceipts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Receipts",
    })
end

--- Returns an item iterator for listPageReceipts.
function M.items_list_page_receipts(client, input)
    return paginator.items(client, "listPageReceipts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Receipts",
    })
end

--- Returns a page iterator for listPageResolutions.
function M.pages_list_page_resolutions(client, input)
    return paginator.pages(client, "listPageResolutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PageResolutions",
    })
end

--- Returns an item iterator for listPageResolutions.
function M.items_list_page_resolutions(client, input)
    return paginator.items(client, "listPageResolutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PageResolutions",
    })
end

--- Returns a page iterator for listPagesByContact.
function M.pages_list_pages_by_contact(client, input)
    return paginator.pages(client, "listPagesByContact", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Pages",
    })
end

--- Returns an item iterator for listPagesByContact.
function M.items_list_pages_by_contact(client, input)
    return paginator.items(client, "listPagesByContact", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Pages",
    })
end

--- Returns a page iterator for listPagesByEngagement.
function M.pages_list_pages_by_engagement(client, input)
    return paginator.pages(client, "listPagesByEngagement", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Pages",
    })
end

--- Returns an item iterator for listPagesByEngagement.
function M.items_list_pages_by_engagement(client, input)
    return paginator.items(client, "listPagesByEngagement", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Pages",
    })
end

--- Returns a page iterator for listPreviewRotationShifts.
function M.pages_list_preview_rotation_shifts(client, input)
    return paginator.pages(client, "listPreviewRotationShifts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RotationShifts",
    })
end

--- Returns an item iterator for listPreviewRotationShifts.
function M.items_list_preview_rotation_shifts(client, input)
    return paginator.items(client, "listPreviewRotationShifts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RotationShifts",
    })
end

--- Returns a page iterator for listRotationOverrides.
function M.pages_list_rotation_overrides(client, input)
    return paginator.pages(client, "listRotationOverrides", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RotationOverrides",
    })
end

--- Returns an item iterator for listRotationOverrides.
function M.items_list_rotation_overrides(client, input)
    return paginator.items(client, "listRotationOverrides", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RotationOverrides",
    })
end

--- Returns a page iterator for listRotationShifts.
function M.pages_list_rotation_shifts(client, input)
    return paginator.pages(client, "listRotationShifts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RotationShifts",
    })
end

--- Returns an item iterator for listRotationShifts.
function M.items_list_rotation_shifts(client, input)
    return paginator.items(client, "listRotationShifts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RotationShifts",
    })
end

--- Returns a page iterator for listRotations.
function M.pages_list_rotations(client, input)
    return paginator.pages(client, "listRotations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Rotations",
    })
end

--- Returns an item iterator for listRotations.
function M.items_list_rotations(client, input)
    return paginator.items(client, "listRotations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Rotations",
    })
end

return M
