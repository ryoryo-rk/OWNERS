require 'mechanize'

agent = Mechanize.new
page = agent.get("https://owner-style.com/")
elements = page.search(".items h2")
elements.each do |ele|
  puts ele.inner_text
end