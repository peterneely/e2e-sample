require_relative '../services/message'

class Base
  include PageObject
  include DataMagic
  include Message
end