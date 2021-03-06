Given(/^an online customer is viewing the minibag$/) do

end

And(/^they added a formal shirt into their shopping bag$/) do
  product_url = on(Home).navigate_to_page_for(:formal_shirt)
  on(Product).add_to_bag_from?(product_url).should be_true
end

And(/^they added trousers, a jacket or a blazer into their shopping bag$/) do
  product_url = on(Home).navigate_to_page_for(:jacket_or_blazer)
  on(Product).add_to_bag_from?(product_url).should be_true
end
