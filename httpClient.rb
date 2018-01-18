require 'httpclient'

client = HTTPClient.new
client.debug_dev = $stderr

query = {'q' => 'goog breakout', 'h1' => 'ja'}

res = client.get('https://google.co.jp', :query => query, :follow_redirect => true)
res = client.post('https://google.co.jp', :query => query, :follow_redirect => true)

puts "code=#{res.code}"
puts HTTP::Status.successful?(res.code)
p res.headers
puts res.body

#proxy
proxy = 'http://*.8080'
client = HTTPClient.new(proxy)

client = HTTPClient.new
client.proxy = nil

res = client.get('https://google.co.jp', query: query, header: ["User-Agent", "hoge"], following_redirect: true)

#get
#post
#post JSON
#req
#redirect
#proxy
#basic
#upload
#res.code #=> Integer, String

