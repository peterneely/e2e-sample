class InterstitialPage < BasePage

  link(:back, :id => 'back')

  def visible?
    back? && @browser.url.include?("minibag?returnurl=")
  end
end