When(/^there are upsell products to display$/) do
  pending
end

Then(/^the customer should see (\d+) of them, each with the following details:$/) do |arg, table|
  # table is a table.hashes.keys # => [:details]
  pending
end

And(/^upsell products are displayed$/) do
  pending
end

When(/^they add (.*) upsell products to the bag, one by one$/) do |number|
  pending
end

Then(/^each product appears in the shopping bag summary, last added on top$/) do
  pending
end

And(/^the shopping bag summary subtotal updates$/) do
  pending
end

And(/^the product summary updates to the added product details$/) do
  pending
end

And(/^the product is hidden in the upsell products$/) do
  pending
end

And(/^the upsell area is (.*)$/) do |shown_or_hidden|
  pending
end

When(/^they try to add an upsell product to the bag that requires a size to be chosen but they haven't chosen a size$/) do
  pending
end

Then(/^they should not be able to add the product to the bag$/) do
  pending
end


And(/^they should be prompted to choose a size$/) do
  pending
end