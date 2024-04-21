f = io.open(".token", "r")
token = f:read "*a"
f:close()

wrk.method = "GET"
wrk.headers["Authorization"] = "Bearer " .. token
