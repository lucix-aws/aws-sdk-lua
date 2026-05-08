








local s3 = require("s3.client")

local client = s3.new({ region = "us-east-1" })

local result, err = client:listBuckets({}, nil):await()
if err then
   io.stderr:write("ERROR: " .. tostring(err) .. "\n")
   os.exit(1)
end

for _, b in ipairs(result.Buckets) do
   print(b.Name)
end
