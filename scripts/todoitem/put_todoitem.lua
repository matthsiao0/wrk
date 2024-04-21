timestamp_now = os.time(os.date("!*t"))
body = '{\"title\": \"test\", \"exp\":' .. timestamp_now + math.random(1, 10000) .. '}'

f = io.open(".token", "r")
token = f:read "*a"
f:close()

wrk.method = "PUT"
wrk.body = body
wrk.headers["Content-Type"] = "application/json"
wrk.headers["Authorization"] = "Bearer " .. token
