Given(/^an online customer is browsing the site on (.*)$/) do |locale|
  on(HomePage).url_correct_for?(locale).should be_true
end

When(/^they add any one product to their shopping bag$/) do
  on(HomePage).add_product
end

Then(/^they should see a minibag lightbox$/) do
  pending
end