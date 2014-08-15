Given(/^an online customer is browsing the (.*) site$/) do |locale|
  on(Home).url_correct_for?(locale).should be_true
end

And(/^they add one product to their shopping bag$/) do
  on(Product).add_to_bag?(random_product_type).should be_true
end

private

def random_product_type
  [:accessories, :formal_shirts, :jackets_and_blazers].sample
end