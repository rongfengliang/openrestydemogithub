local config = require("lapis.config")
config("development", {
  mysql = {
    host = "mydb",--change to you database url
    user = "root",
    password = "dalongrong",
    database = "userapp"
  }
})