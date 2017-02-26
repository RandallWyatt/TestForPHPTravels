require 'watir'
require 'page-object'
require 'page-object/page_factory'

browser = Watir::Browser.new :chrome, {detach:true}

BASE_URL = 'http://phptravels.com/demo/'

World PageObject::PageFactory

Before do
  @browser = browser
  @browser.driver.manage.window.maximize
end

at_exit do
  #browser.close
end
