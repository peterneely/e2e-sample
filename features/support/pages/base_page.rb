require_relative '../services/message'

class BasePage
  include PageObject
  include DataMagic
  include Message
end