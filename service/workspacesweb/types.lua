local M = {}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.AuthenticationType = {
    STANDARD = "Standard",
    IAM_IDENTITY_CENTER = "IAM_Identity_Center",
}

M.Category = {
    CULTS = "Cults",
    GAMBLING = "Gambling",
    NUDITY = "Nudity",
    PORNOGRAPHY = "Pornography",
    SEX_EDUCATION = "SexEducation",
    TASTELESS = "Tasteless",
    VIOLENCE = "Violence",
    DOWNLOAD_SITES = "DownloadSites",
    IMAGE_SHARING = "ImageSharing",
    PEER_TO_PEER = "PeerToPeer",
    STREAMING_MEDIA_AND_DOWNLOADS = "StreamingMediaAndDownloads",
    GENERATIVE_AI = "GenerativeAI",
    CRIMINAL_ACTIVITY = "CriminalActivity",
    HACKING = "Hacking",
    HATE_AND_INTOLERANCE = "HateAndIntolerance",
    ILLEGAL_DRUG = "IllegalDrug",
    ILLEGAL_SOFTWARE = "IllegalSoftware",
    SCHOOL_CHEATING = "SchoolCheating",
    SELF_HARM = "SelfHarm",
    WEAPONS = "Weapons",
    CHAT = "Chat",
    GAMES = "Games",
    INSTANT_MESSAGING = "InstantMessaging",
    PROFESSIONAL_NETWORK = "ProfessionalNetwork",
    SOCIAL_NETWORKING = "SocialNetworking",
    WEB_BASED_EMAIL = "WebBasedEmail",
    PARKED_DOMAINS = "ParkedDomains",
}

M.RedactionPlaceHolderType = {
    CUSTOM_TEXT = "CustomText",
}

M.SessionStatus = {
    ACTIVE = "Active",
    TERMINATED = "Terminated",
}

M.IdentityProviderType = {
    SAML = "SAML",
    Facebook = "Facebook",
    Google = "Google",
    LoginWithAmazon = "LoginWithAmazon",
    SignInWithApple = "SignInWithApple",
    OIDC = "OIDC",
}

M.SessionSortBy = {
    START_TIME_ASCENDING = "StartTimeAscending",
    START_TIME_DESCENDING = "StartTimeDescending",
}

M.BrowserType = {
    CHROME = "Chrome",
}

M.InstanceType = {
    STANDARD_REGULAR = "standard.regular",
    STANDARD_LARGE = "standard.large",
    STANDARD_XLARGE = "standard.xlarge",
}

M.PortalStatus = {
    INCOMPLETE = "Incomplete",
    PENDING = "Pending",
    ACTIVE = "Active",
}

M.RendererType = {
    APPSTREAM = "AppStream",
}

M.Event = {
    WEBSITE_INTERACT = "WebsiteInteract",
    FILE_DOWNLOAD_FROM_SECURE_BROWSER_TO_REMOTE_DISK = "FileDownloadFromSecureBrowserToRemoteDisk",
    FILE_TRANSFER_FROM_REMOTE_TO_LOCAL_DISK = "FileTransferFromRemoteToLocalDisk",
    FILE_TRANSFER_FROM_LOCAL_TO_REMOTE_DISK = "FileTransferFromLocalToRemoteDisk",
    FILE_UPLOAD_FROM_REMOTE_DISK_TO_SECURE_BROWSER = "FileUploadFromRemoteDiskToSecureBrowser",
    CONTENT_PASTE_TO_WEBSITE = "ContentPasteToWebsite",
    CONTENT_TRANSFER_FROM_LOCAL_TO_REMOTE_CLIPBOARD = "ContentTransferFromLocalToRemoteClipboard",
    CONTENT_COPY_FROM_WEBSITE = "ContentCopyFromWebsite",
    URL_LOAD = "UrlLoad",
    TAB_OPEN = "TabOpen",
    TAB_CLOSE = "TabClose",
    PRINT_JOB_SUBMIT = "PrintJobSubmit",
    SESSION_CONNECT = "SessionConnect",
    SESSION_START = "SessionStart",
    SESSION_DISCONNECT = "SessionDisconnect",
    SESSION_END = "SessionEnd",
    URL_BLOCK_BY_CONTENT_FILTER = "UrlBlockByContentFilter",
}

M.FolderStructure = {
    FLAT = "Flat",
    NESTED_BY_DATE = "NestedByDate",
}

M.LogFileFormat = {
    JSON_LINES = "JSONLines",
    JSON = "Json",
}

M.ColorTheme = {
    LIGHT = "Light",
    DARK = "Dark",
}

M.MimeType = {
    PNG = "image/png",
    JPEG = "image/jpeg",
    ICO = "image/x-icon",
}

M.Locale = {
    DE = "de-DE",
    EN = "en-US",
    ES = "es-ES",
    FR = "fr-FR",
    ID = "id-ID",
    IT = "it-IT",
    JP = "ja-JP",
    KR = "ko-KR",
    BR = "pt-BR",
    CN = "zh-CN",
    TW = "zh-TW",
}

M.EnabledType = {
    DISABLED = "Disabled",
    ENABLED = "Enabled",
}

M.ToolbarItem = {
    WINDOWS = "Windows",
    DUAL_MONITOR = "DualMonitor",
    FULL_SCREEN = "FullScreen",
    WEBCAM = "Webcam",
    MICROPHONE = "Microphone",
}

M.MaxDisplayResolution = {
    RESOLUTION_DCI_4K = "size4096X2160",
    RESOLUTION_UHD_4K = "size3840X2160",
    RESOLUTION_1440P_ULTRA_WIDE = "size3440X1440",
    RESOLUTION_1440P = "size2560X1440",
    RESOLUTION_1080P = "size1920X1080",
    RESOLUTION_720P = "size1280X720",
    RESOLUTION_768P = "size1024X768",
    RESOLUTION_600P = "size800X600",
}

M.ToolbarType = {
    FLOATING = "Floating",
    DOCKED = "Docked",
}

M.VisualMode = {
    DARK = "Dark",
    LIGHT = "Light",
}

return M
