Given(/^an online customer is browsing the site on (.*)$/) do |locale|
  on(HomePage).url_correct_for?(locale).should be_true
end

When(/^they add any one product to their shopping bag$/) do
  on(ProductPage).add_product?.should be_true
end

Then(/^they should see a minibag lightbox$/) do
  on(ProductPage).minibag_popup_visible?.should be_true
end

Given(/^a customer is viewing the minibag$/) do
  on(ProductPage).viewing_minibag?.should be_true
end

When(/^they click the close button$/) do
  on(ProductPage).minibag_click_close_button
end

Then(/^close the lightbox$/) do
  on(ProductPage).minibag_popup_visible?.should be_false
end

When(/^they click outside it$/) do
  on(ProductPage).minibag_click_outside
end