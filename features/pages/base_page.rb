class BasePage
  include PageObject

  def should_include_text(text)
    wait_until(5, "#{text} failed to appear"){
      self.text.include? text
    }
  end

  def initialize_page
    #fail
  end
end