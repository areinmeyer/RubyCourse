# thehttp.rb
require 'net/http'
re = /\sthe*\s/
url = URI.parse('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')
Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  puts http.request(req).body.upcase.split(/\W+/).count('THE')
  #need to lower or upper case the values to get the right count.
end