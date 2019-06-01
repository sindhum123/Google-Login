require 'watir'

@browser = Watir::Browser.new :chrome
def open_browser url
  @browser.goto url

end
open_browser 'www.google.com'
def search_option search_text
  @browser.text_field(:class =>'gLFyf gsfi').set search_text
  @browser.send_keys :enter
end
search_option 'TV'

expected_result = '12345'

p actual_result=@browser.div(:id=> 'resultStats').text.split(' ')[1].gsub(',',"")


if
expected_result != actual_result
  p "The test has passed"
else
  p "The test has failed"


end
