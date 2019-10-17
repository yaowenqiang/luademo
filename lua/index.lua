local uri_args = ngx.req.get_uri_args()
local no = require("no")
no.args = uri_args
