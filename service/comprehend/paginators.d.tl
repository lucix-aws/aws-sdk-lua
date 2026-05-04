local record M
    pages_list_datasets: function(client: table, input: table): function(): table, table
    pages_list_document_classification_jobs: function(client: table, input: table): function(): table, table
    pages_list_document_classifier_summaries: function(client: table, input: table): function(): table, table
    pages_list_document_classifiers: function(client: table, input: table): function(): table, table
    pages_list_dominant_language_detection_jobs: function(client: table, input: table): function(): table, table
    pages_list_endpoints: function(client: table, input: table): function(): table, table
    items_list_endpoints: function(client: table, input: table): function(): any
    pages_list_entities_detection_jobs: function(client: table, input: table): function(): table, table
    pages_list_entity_recognizer_summaries: function(client: table, input: table): function(): table, table
    pages_list_entity_recognizers: function(client: table, input: table): function(): table, table
    pages_list_events_detection_jobs: function(client: table, input: table): function(): table, table
    pages_list_flywheel_iteration_history: function(client: table, input: table): function(): table, table
    pages_list_flywheels: function(client: table, input: table): function(): table, table
    pages_list_key_phrases_detection_jobs: function(client: table, input: table): function(): table, table
    pages_list_pii_entities_detection_jobs: function(client: table, input: table): function(): table, table
    items_list_pii_entities_detection_jobs: function(client: table, input: table): function(): any
    pages_list_sentiment_detection_jobs: function(client: table, input: table): function(): table, table
    pages_list_targeted_sentiment_detection_jobs: function(client: table, input: table): function(): table, table
    pages_list_topics_detection_jobs: function(client: table, input: table): function(): table, table
end

return M
