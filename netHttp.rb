require "net/http"
require "uri"

#get
url = "https://ipinfo.io"
puts Net::HTTP.get(URI.parse(url))
#=> String

#post
url = "http://httpbin.org/post"
params = {a: 123, b: "hoge"}
ret = Net::HTTP.post_form(URI.parse(url), params)
puts ret.code
puts ret.body


#post JSON
url = "httpsL//httpbin.org/post"
payload = {
  a: 123, b:"hoge"
}

uri = URI.parse(url)
http = Net::HTTP.new(uri.host, uri.port)
http.user_ssl = true
req = Net::HTTP::Post.new(uri.request_uri)
req["Content-Type"] = "application/json"
req.body = payload.to_json
res = http.request(req)

puts "code -> #{res.code}"
res.each_capitalized_name do |name|
  value = res[name]
  puts "#{name} = #{value}"
end
puts "body -> #{res.body}"

