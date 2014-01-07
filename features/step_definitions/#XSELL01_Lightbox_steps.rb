Given(/^an online customer is browsing the site on (.*)$/) do |locale|
  on(HomePage).browse_to(locale).should be_true
end

When(/^they add any one product to their shopping bag$/) do
  #@current_page.add_product
end

Then(/^they should see a minibag lightbox$/) do
  pending
end