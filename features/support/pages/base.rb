require_relative '../services/message'

class Base
  include PageObject
  include DataMagic
  include Message

  def create(page)
     page.new(@browser)
  end
end