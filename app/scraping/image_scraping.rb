require 'mechanize'

agent = Mechanize.new
page = agent.get("https://owner-style.com/")
elements = page.search(".item-image img")
elements.each do |ele|
  puts ele.get_attribute('src')
end