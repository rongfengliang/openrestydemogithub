local lapis = require("lapis")
local db = require("lapis.db")
local app = lapis.Application()
local json = require("cjson");
app:get("/", function()
  return "Welcome to Lapis " .. require("lapis.version")
end)
app:get("/user", function()
  -- local res = db.query("SELECT * FROM userdemo")
  -- return json.encode(res)
  local res = db.query("SELECT * FROM userdemo")
  return { json= res}

end)
return app
