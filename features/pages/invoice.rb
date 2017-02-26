require_relative 'base_page'

class Invoice < BasePage
  include PageObject

  def should_contain_text(text)
    wait_until(7, "#{text} failed to appear"){
      self.text.include? text
    }
  end
end