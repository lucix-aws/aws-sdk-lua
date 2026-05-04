local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeAccountAttributes.
function M.pages_describe_account_attributes(client, input)
    return paginator.pages(client, "describeAccountAttributes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountAttributes",
    })
end

--- Returns an item iterator for describeAccountAttributes.
function M.items_describe_account_attributes(client, input)
    return paginator.items(client, "describeAccountAttributes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountAttributes",
    })
end

--- Returns a page iterator for describeAccountLimits.
function M.pages_describe_account_limits(client, input)
    return paginator.pages(client, "describeAccountLimits", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountLimits",
    })
end

--- Returns an item iterator for describeAccountLimits.
function M.items_describe_account_limits(client, input)
    return paginator.items(client, "describeAccountLimits", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountLimits",
    })
end

--- Returns a page iterator for describeConfigurationSets.
function M.pages_describe_configuration_sets(client, input)
    return paginator.pages(client, "describeConfigurationSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfigurationSets",
    })
end

--- Returns an item iterator for describeConfigurationSets.
function M.items_describe_configuration_sets(client, input)
    return paginator.items(client, "describeConfigurationSets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfigurationSets",
    })
end

--- Returns a page iterator for describeKeywords.
function M.pages_describe_keywords(client, input)
    return paginator.pages(client, "describeKeywords", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Keywords",
    })
end

--- Returns an item iterator for describeKeywords.
function M.items_describe_keywords(client, input)
    return paginator.items(client, "describeKeywords", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Keywords",
    })
end

--- Returns a page iterator for describeNotifyConfigurations.
function M.pages_describe_notify_configurations(client, input)
    return paginator.pages(client, "describeNotifyConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotifyConfigurations",
    })
end

--- Returns an item iterator for describeNotifyConfigurations.
function M.items_describe_notify_configurations(client, input)
    return paginator.items(client, "describeNotifyConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotifyConfigurations",
    })
end

--- Returns a page iterator for describeNotifyTemplates.
function M.pages_describe_notify_templates(client, input)
    return paginator.pages(client, "describeNotifyTemplates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotifyTemplates",
    })
end

--- Returns an item iterator for describeNotifyTemplates.
function M.items_describe_notify_templates(client, input)
    return paginator.items(client, "describeNotifyTemplates", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotifyTemplates",
    })
end

--- Returns a page iterator for describeOptOutLists.
function M.pages_describe_opt_out_lists(client, input)
    return paginator.pages(client, "describeOptOutLists", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OptOutLists",
    })
end

--- Returns an item iterator for describeOptOutLists.
function M.items_describe_opt_out_lists(client, input)
    return paginator.items(client, "describeOptOutLists", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OptOutLists",
    })
end

--- Returns a page iterator for describeOptedOutNumbers.
function M.pages_describe_opted_out_numbers(client, input)
    return paginator.pages(client, "describeOptedOutNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OptedOutNumbers",
    })
end

--- Returns an item iterator for describeOptedOutNumbers.
function M.items_describe_opted_out_numbers(client, input)
    return paginator.items(client, "describeOptedOutNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OptedOutNumbers",
    })
end

--- Returns a page iterator for describePhoneNumbers.
function M.pages_describe_phone_numbers(client, input)
    return paginator.pages(client, "describePhoneNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PhoneNumbers",
    })
end

--- Returns an item iterator for describePhoneNumbers.
function M.items_describe_phone_numbers(client, input)
    return paginator.items(client, "describePhoneNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PhoneNumbers",
    })
end

--- Returns a page iterator for describePools.
function M.pages_describe_pools(client, input)
    return paginator.pages(client, "describePools", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Pools",
    })
end

--- Returns an item iterator for describePools.
function M.items_describe_pools(client, input)
    return paginator.items(client, "describePools", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Pools",
    })
end

--- Returns a page iterator for describeProtectConfigurations.
function M.pages_describe_protect_configurations(client, input)
    return paginator.pages(client, "describeProtectConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProtectConfigurations",
    })
end

--- Returns an item iterator for describeProtectConfigurations.
function M.items_describe_protect_configurations(client, input)
    return paginator.items(client, "describeProtectConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProtectConfigurations",
    })
end

--- Returns a page iterator for describeRcsAgentCountryLaunchStatus.
function M.pages_describe_rcs_agent_country_launch_status(client, input)
    return paginator.pages(client, "describeRcsAgentCountryLaunchStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CountryLaunchStatus",
    })
end

--- Returns an item iterator for describeRcsAgentCountryLaunchStatus.
function M.items_describe_rcs_agent_country_launch_status(client, input)
    return paginator.items(client, "describeRcsAgentCountryLaunchStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CountryLaunchStatus",
    })
end

--- Returns a page iterator for describeRcsAgents.
function M.pages_describe_rcs_agents(client, input)
    return paginator.pages(client, "describeRcsAgents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RcsAgents",
    })
end

--- Returns an item iterator for describeRcsAgents.
function M.items_describe_rcs_agents(client, input)
    return paginator.items(client, "describeRcsAgents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RcsAgents",
    })
end

--- Returns a page iterator for describeRegistrationAttachments.
function M.pages_describe_registration_attachments(client, input)
    return paginator.pages(client, "describeRegistrationAttachments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationAttachments",
    })
end

--- Returns an item iterator for describeRegistrationAttachments.
function M.items_describe_registration_attachments(client, input)
    return paginator.items(client, "describeRegistrationAttachments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationAttachments",
    })
end

--- Returns a page iterator for describeRegistrationFieldDefinitions.
function M.pages_describe_registration_field_definitions(client, input)
    return paginator.pages(client, "describeRegistrationFieldDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationFieldDefinitions",
    })
end

--- Returns an item iterator for describeRegistrationFieldDefinitions.
function M.items_describe_registration_field_definitions(client, input)
    return paginator.items(client, "describeRegistrationFieldDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationFieldDefinitions",
    })
end

--- Returns a page iterator for describeRegistrationFieldValues.
function M.pages_describe_registration_field_values(client, input)
    return paginator.pages(client, "describeRegistrationFieldValues", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationFieldValues",
    })
end

--- Returns an item iterator for describeRegistrationFieldValues.
function M.items_describe_registration_field_values(client, input)
    return paginator.items(client, "describeRegistrationFieldValues", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationFieldValues",
    })
end

--- Returns a page iterator for describeRegistrationSectionDefinitions.
function M.pages_describe_registration_section_definitions(client, input)
    return paginator.pages(client, "describeRegistrationSectionDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationSectionDefinitions",
    })
end

--- Returns an item iterator for describeRegistrationSectionDefinitions.
function M.items_describe_registration_section_definitions(client, input)
    return paginator.items(client, "describeRegistrationSectionDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationSectionDefinitions",
    })
end

--- Returns a page iterator for describeRegistrationTypeDefinitions.
function M.pages_describe_registration_type_definitions(client, input)
    return paginator.pages(client, "describeRegistrationTypeDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationTypeDefinitions",
    })
end

--- Returns an item iterator for describeRegistrationTypeDefinitions.
function M.items_describe_registration_type_definitions(client, input)
    return paginator.items(client, "describeRegistrationTypeDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationTypeDefinitions",
    })
end

--- Returns a page iterator for describeRegistrationVersions.
function M.pages_describe_registration_versions(client, input)
    return paginator.pages(client, "describeRegistrationVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationVersions",
    })
end

--- Returns an item iterator for describeRegistrationVersions.
function M.items_describe_registration_versions(client, input)
    return paginator.items(client, "describeRegistrationVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationVersions",
    })
end

--- Returns a page iterator for describeRegistrations.
function M.pages_describe_registrations(client, input)
    return paginator.pages(client, "describeRegistrations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Registrations",
    })
end

--- Returns an item iterator for describeRegistrations.
function M.items_describe_registrations(client, input)
    return paginator.items(client, "describeRegistrations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Registrations",
    })
end

--- Returns a page iterator for describeSenderIds.
function M.pages_describe_sender_ids(client, input)
    return paginator.pages(client, "describeSenderIds", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SenderIds",
    })
end

--- Returns an item iterator for describeSenderIds.
function M.items_describe_sender_ids(client, input)
    return paginator.items(client, "describeSenderIds", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SenderIds",
    })
end

--- Returns a page iterator for describeSpendLimits.
function M.pages_describe_spend_limits(client, input)
    return paginator.pages(client, "describeSpendLimits", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SpendLimits",
    })
end

--- Returns an item iterator for describeSpendLimits.
function M.items_describe_spend_limits(client, input)
    return paginator.items(client, "describeSpendLimits", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SpendLimits",
    })
end

--- Returns a page iterator for describeVerifiedDestinationNumbers.
function M.pages_describe_verified_destination_numbers(client, input)
    return paginator.pages(client, "describeVerifiedDestinationNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "VerifiedDestinationNumbers",
    })
end

--- Returns an item iterator for describeVerifiedDestinationNumbers.
function M.items_describe_verified_destination_numbers(client, input)
    return paginator.items(client, "describeVerifiedDestinationNumbers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "VerifiedDestinationNumbers",
    })
end

--- Returns a page iterator for listNotifyCountries.
function M.pages_list_notify_countries(client, input)
    return paginator.pages(client, "listNotifyCountries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotifyCountries",
    })
end

--- Returns an item iterator for listNotifyCountries.
function M.items_list_notify_countries(client, input)
    return paginator.items(client, "listNotifyCountries", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotifyCountries",
    })
end

--- Returns a page iterator for listPoolOriginationIdentities.
function M.pages_list_pool_origination_identities(client, input)
    return paginator.pages(client, "listPoolOriginationIdentities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OriginationIdentities",
    })
end

--- Returns an item iterator for listPoolOriginationIdentities.
function M.items_list_pool_origination_identities(client, input)
    return paginator.items(client, "listPoolOriginationIdentities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OriginationIdentities",
    })
end

--- Returns a page iterator for listProtectConfigurationRuleSetNumberOverrides.
function M.pages_list_protect_configuration_rule_set_number_overrides(client, input)
    return paginator.pages(client, "listProtectConfigurationRuleSetNumberOverrides", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RuleSetNumberOverrides",
    })
end

--- Returns an item iterator for listProtectConfigurationRuleSetNumberOverrides.
function M.items_list_protect_configuration_rule_set_number_overrides(client, input)
    return paginator.items(client, "listProtectConfigurationRuleSetNumberOverrides", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RuleSetNumberOverrides",
    })
end

--- Returns a page iterator for listRegistrationAssociations.
function M.pages_list_registration_associations(client, input)
    return paginator.pages(client, "listRegistrationAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationAssociations",
    })
end

--- Returns an item iterator for listRegistrationAssociations.
function M.items_list_registration_associations(client, input)
    return paginator.items(client, "listRegistrationAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RegistrationAssociations",
    })
end

return M
