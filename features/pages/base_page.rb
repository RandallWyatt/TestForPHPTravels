class BasePage
  include PageObject

  def should_contain_text(text)
    wait_until(7, "#{text} failed to appear"){
      self.text.include? text
    }
  end

  def initialize_page
    #fail
  end
end