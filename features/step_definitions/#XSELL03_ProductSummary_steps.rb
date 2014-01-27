Given(/^an online customer is viewing the minibag$/) do

end

And(/^they added a formal shirt into their shopping bag$/) do
  product_url = on(HomePage).navigate_to_product_for(:formal_shirt)
  on(ProductPage).add_to_bag_from?(product_url).should be_true
end

And(/^they are viewing the minibag$/) do
  pending
end

Then(/^display the following details:$/) do |table|
  # table is a table.hashes.keys # => [:Details]
  pending
end

Given(/^an online customer added trousers, a jacket or a blazer into their shopping bag$/) do
  pending
end


Given(/^an online customer added a suit into their shopping bag$/) do
  pending
end

Given(/^an online customer added any of the following product types into their shopping bag:$/) do |table|
  # table is a table.hashes.keys # => [:Product types]
  pending
end

