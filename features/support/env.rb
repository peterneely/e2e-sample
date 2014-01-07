require 'rspec-expectations'
require 'page-object'
require 'page_navigation'
require 'require_all'
require 'data_magic'
require 'fig_newton'
require 'faker'

require_rel 'pages'
require_rel 'services'

class CustomWorld
  include PageObject::PageFactory
end

World do
  CustomWorld.new
end

#PageObject::PageFactory.routes = {
#    :default => [
#        [HomePage, :shirt_configurator_open?],
#        [FitPage, :navigate_forward_to?, CollarPage],
#        [CollarPage, :navigate_forward_to?, CuffPage],
#        [CuffPage, :navigate_forward_to?, SummaryPage],
#        [SummaryPage, :proceed_to_product_listing],
#        [ProductPage]
#    ]
#}
