Given(/^an online customer is browsing the (.*) site$/) do |locale|
  on(HomePage).url_correct_for?(locale).should be_true
end