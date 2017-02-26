require_relative 'base_page'

class PersonalInformation < BasePage
  include PageObject

  text_field(:fname, name:'firstname')
  text_field(:lname, name:'lastname')
  text_field(:email, name:'email')
  text_field(:confirm_email, name:'confirmemail')
  text_field(:number, name:'phone')
  text_field(:address, name:'address')
  text_area(:notes, name:'additionalnotes')

  button(:confirm_booking, text:'CONFIRM THIS BOOKING')

  def customer_information_form
    self.fname = 'Johnny'
    self.lname = 'Pullmuhpud'
    self.email = 'kma@example.com'
    self.confirm_email = 'kma@example.com'
    self.number = '808-555-2424'
    self.address = '99 Not Your House Lane'
    self.notes = 'I would like an in-ear translator. I wont pay extra for this item.'
    confirm_booking
  end

end