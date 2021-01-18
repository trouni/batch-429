require 'open-uri'
require 'nokogiri'

ingredient = 'chocolate'
url = "https://www.bbcgoodfood.com/search/recipes?query=#{ingredient}"

serialized_html = open(url).read
html_doc = Nokogiri::HTML(serialized_html)

html_doc.search('.teaser-item__title a').each do |element|
  p element.text.strip
  p element.attribute('href').value
end
