class HomePage < BasePage

  button(:add_to_bag, :alt => 'Add to bag')

  def browse_to(locale)
    locale.downcase!
    goto(url_for(locale))
    url_correct_for?(locale)
  end

  def add_product
    url_segment = data_for(:home_page)['products']
    url = "#{FigNewton.base_url}/#{url_segment}"
    @browser.goto url
    Message.output "Adding this product to bag: #{url}"
    add_to_bag
  end

  private

  def url_for(locale)
    url_segment = data_for(:locale_ids)[locale]
    url = "#{FigNewton.base_url}/Country/Change/#{url_segment}"
    return url
  end

  def goto(url)
    Message.output "Navigating to #{url}"
    navigate_to url
  end

  def url_correct_for?(locale)
    wait_until do
      @browser.url.include? data_for(:promotion_code_for)[locale]
    end
  end
end