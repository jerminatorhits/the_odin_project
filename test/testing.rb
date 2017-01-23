require 'net/http'
require 'nokogiri'
require 'open-uri'
require 'rexml/document'

doc = Nokogiri::HTML(open('http://www.rubyinside.com/test.html'))
puts doc.css("h1").first.inner_html














=begin
url = URI.parse('http://browserspy.dk/password-ok.php')
Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  req.basic_auth('test', 'test')
  puts http.request(req).body
end
=end