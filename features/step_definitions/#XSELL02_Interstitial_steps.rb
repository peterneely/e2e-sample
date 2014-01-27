Then(/^they should see a minibag interstitial$/) do
  on(InterstitialPage).visible?.should be_true
end

