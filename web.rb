require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/epel-latest/:version/:arch/:package' do |version, arch, package|
  expires 500, :public, :must_revalidate

  url = "http://dl.fedoraproject.org/pub/epel/#{version}/#{arch}/repoview/#{package}.html"
  doc = Nokogiri::HTML(open(url))

  node = doc.at_xpath('//a[@class="inpage"]/@href')
  halt 404, "404!" if node.nil?
  absolute_uri = URI.join(url, node.content).to_s
  redirect to(absolute_uri), 302
end
