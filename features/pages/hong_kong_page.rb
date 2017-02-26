require_relative 'base_page'

class HongKongPage < BasePage
  include PageObject

  button(:book_now_button, text:'Book Now')

  def vacation_options
    book_now_button
  end
end