require_relative 'base_page'
class ToursPage < BasePage
  include PageObject

  link(:hong_kong_tour, href:'http://phptravels.net/tours/hong-kong/hong-kong/Hong-Kong-Island-Tour')

  def tour_selection
    hong_kong_tour
  end

end