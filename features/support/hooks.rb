require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :chrome
  @browser.goto "#{FigNewton.base_url}"
end

After do
  @browser.close
end