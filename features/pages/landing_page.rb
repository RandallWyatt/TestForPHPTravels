require_relative 'base_page'

class LandingPage < BasePage
  include PageObject

  page_url BASE_URL

  link(:link_to_phptravels, text:'http://www.phptravels.net')

  def links_to_travel
    link_to_phptravels
  end
end