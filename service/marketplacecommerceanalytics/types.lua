local M = {}

M.DataSetType = {
    CUSTOMER_SUBSCRIBER_HOURLY_MONTHLY_SUBSCRIPTIONS = "customer_subscriber_hourly_monthly_subscriptions",
    CUSTOMER_SUBSCRIBER_ANNUAL_SUBSCRIPTIONS = "customer_subscriber_annual_subscriptions",
    DAILY_BUSINESS_USAGE_BY_INSTANCE_TYPE = "daily_business_usage_by_instance_type",
    DAILY_BUSINESS_FEES = "daily_business_fees",
    DAILY_BUSINESS_FREE_TRIAL_CONVERSIONS = "daily_business_free_trial_conversions",
    DAILY_BUSINESS_NEW_INSTANCES = "daily_business_new_instances",
    DAILY_BUSINESS_NEW_PRODUCT_SUBSCRIBERS = "daily_business_new_product_subscribers",
    DAILY_BUSINESS_CANCELED_PRODUCT_SUBSCRIBERS = "daily_business_canceled_product_subscribers",
    MONTHLY_REVENUE_BILLING_AND_REVENUE_DATA = "monthly_revenue_billing_and_revenue_data",
    MONTHLY_REVENUE_ANNUAL_SUBSCRIPTIONS = "monthly_revenue_annual_subscriptions",
    MONTHLY_REVENUE_FIELD_DEMONSTRATION_USAGE = "monthly_revenue_field_demonstration_usage",
    MONTHLY_REVENUE_FLEXIBLE_PAYMENT_SCHEDULE = "monthly_revenue_flexible_payment_schedule",
    DISBURSED_AMOUNT_BY_PRODUCT = "disbursed_amount_by_product",
    DISBURSED_AMOUNT_BY_PRODUCT_WITH_UNCOLLECTED_FUNDS = "disbursed_amount_by_product_with_uncollected_funds",
    DISBURSED_AMOUNT_BY_INSTANCE_HOURS = "disbursed_amount_by_instance_hours",
    DISBURSED_AMOUNT_BY_CUSTOMER_GEO = "disbursed_amount_by_customer_geo",
    DISBURSED_AMOUNT_BY_AGE_OF_UNCOLLECTED_FUNDS = "disbursed_amount_by_age_of_uncollected_funds",
    DISBURSED_AMOUNT_BY_AGE_OF_DISBURSED_FUNDS = "disbursed_amount_by_age_of_disbursed_funds",
    DISBURSED_AMOUNT_BY_AGE_OF_PAST_DUE_FUNDS = "disbursed_amount_by_age_of_past_due_funds",
    DISBURSED_AMOUNT_BY_UNCOLLECTED_FUNDS_BREAKDOWN = "disbursed_amount_by_uncollected_funds_breakdown",
    CUSTOMER_PROFILE_BY_INDUSTRY = "customer_profile_by_industry",
    CUSTOMER_PROFILE_BY_REVENUE = "customer_profile_by_revenue",
    CUSTOMER_PROFILE_BY_GEOGRAPHY = "customer_profile_by_geography",
    SALES_COMPENSATION_BILLED_REVENUE = "sales_compensation_billed_revenue",
    US_SALES_AND_USE_TAX_RECORDS = "us_sales_and_use_tax_records",
}

M.GenerateDataSetInput = {
    type = "structure",
    members = {
        dataSetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSetPublicationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        roleNameArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationS3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationS3Prefix = {
            type = "string",
        },
        snsTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerDefinedValues = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GenerateDataSetOutput = {
    type = "structure",
    members = {
        dataSetRequestId = {
            type = "string",
        },
    },
}

M.MarketplaceCommerceAnalyticsException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SupportDataSetType = {
    customer_support_contacts_data = "customer_support_contacts_data",
    test_customer_support_contacts_data = "test_customer_support_contacts_data",
}

M.StartSupportDataExportInput = {
    type = "structure",
    members = {
        dataSetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fromDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        roleNameArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationS3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationS3Prefix = {
            type = "string",
        },
        snsTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerDefinedValues = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartSupportDataExportOutput = {
    type = "structure",
    members = {
        dataSetRequestId = {
            type = "string",
        },
    },
}

return M
